<html>
<head>
	<title>ciBlog</title>
	<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/style.css">
      <script src="http://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="<?php echo base_url(); ?>">ciBlog</a>
			</div>
			<div id="navbar">
				<ul class="nav navbar-nav">
					<li><a href="<?php echo base_url(); ?>">Home</a></li>
					<li><a href="<?php echo base_url(); ?>about">About</a></li>
					<li><a href="<?php echo base_url(); ?>posts">Blog</a></li>
					<li><a href="<?php echo base_url(); ?>categories">Category</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<?php echo base_url(); ?>posts/create">Create Post</a></li>
					<li><a href="<?php echo base_url(); ?>categories/create">Create Category</a></li>
				</ul>
			</div>	
		</div>	
	</nav>
	<div class="container">