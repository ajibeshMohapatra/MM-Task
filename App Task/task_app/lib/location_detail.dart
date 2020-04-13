import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget{
@override
Widget build(BuildContext context){
 return Scaffold(
      appBar: AppBar(
      title: Text("Hello World !"),
      ),
  body: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
  section("one.", Colors.red),
    section("two.", Colors.blue),
    section("three.", Colors.green),
  ],
  ),
  );
}
Widget section(String title,Color color){
  return Container(
    decoration: BoxDecoration(
      color: color,
    ),
    child: Text(title),
  );
}
}

