import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget{
  final Location location;

  LocationDetail(this.location);

@override
Widget build(BuildContext context){
 return Scaffold(
      appBar: AppBar(
      title: Text(location.name),
      ),
  body: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: _renderFacts(location),
  ),
  );
}
List<Widget> _renderFacts(Location location){
  var result = List<Widget>();
  for (int i=0; i < location.facts.length; i++){
    result.add(_sectionTitle(location.facts[1].title));
    result.add(_sectionText(location.facts[1].text));
  }
  return result;
}

Widget _sectionTitle(String text){
  return Text(text);
}
Widget _sectionText(String text){
  return Text(text);
}
}

