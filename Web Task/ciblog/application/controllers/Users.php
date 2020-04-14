<?php
class Users extends CI_Controller{
	//User Registration
	public function register(){
		$data['title'] = 'Sign Up';

		$this->form_validation->set_rules('name', 'Name', 'required');
		$this->form_validation->set_rules('username', 'Username', 'required|callback_check_username_exists');
		$this->form_validation->set_rules('email', 'Email', 'required|callback_check_email_exists');
		$this->form_validation->set_rules('password', 'Password', 'required');
		$this->form_validation->set_rules('password2', 'Confirm Password', 'matches[password]');

		if($this->form_validation->run() === FALSE){
			$this->load->view('templates/header');
			$this->load->view('users/register', $data);
			$this->load->view('templates/footer');
		} else {
			// Encrypt Password
			$enc_password = md5($this->input->post('password'));

			$this->user_model->register($enc_password);

			//Set Message
			$this->session->set_flashdata('user_registered', 'You are now registered successfully and can log in');

			redirect('posts');
		}
	}

	//Log In
	public function login(){
		$data['title'] = 'Sign In';

		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if($this->form_validation->run() === FALSE){
			$this->load->view('templates/header');
			$this->load->view('users/login', $data);
			$this->load->view('templates/footer');
		} else {
			//Get Username
			$username = $this->input->post('username');

			//Get and encrypt the password
			$password = md5($this->input->post('password'));

			//Login User
			$user_id = $this->user_model->login($username, $password);

			if($user_id){
				//Create session
				$user_data = array(
					'user_id' => $user_id,
					'username' => $username,
					'logged_in' => true
				);

				$this->session->set_userdata($user_data);

				//Set Message
				$this->session->set_flashdata('user_loggedin', 'You are now logged in successfully');

			redirect('posts');
			} else {
				//Set Message
				$this->session->set_flashdata('login_failed', 'Login is invalid');

			redirect('users/login');
			}	
		}
	}

	//Log user out
	public function logout(){
		//Unset User data
		$this->session->unset_userdata('logged_in');
		$this->session->unset_userdata('user_id');
		$this->session->unset_userdata('username');

		//Set Message
		$this->session->set_flashdata('user_loggedout', 'You are logged out');

		redirect('users/login');
	}

	//Check if username exists
	public function check_username_exists($username){
		$this->form_validation->set_message('check_username_exists', 'That Username is already taken. Please choose a different one.');

		if($this->user_model->check_username_exists($username)){
			return true;
		} else {
			return false;
		}
	}

	//Check if email exists
	public function check_email_exists($email){
		$this->form_validation->set_message('check_email_exists', 'That Email is already taken. Please choose a different one.');

		if($this->user_model->check_email_exists($email)){
			return true;
		} else {
			return false;
		}
	}
}