 import 'package:task_app/models/location_fact.dart';
  import '../models/location.dart';

class MockLocation extends Location{
  static Location fetchAny(){
    return Location(
      name: 'Arashiyama Bamboo Grove, Kyoto, Japan',
      url: 'https://goo.gl/Npy2K8',
      facts: <LocationFact>[
        LocationFact(
          title: 'Summary',
          text: 'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, ths sight\'s pleasurees extend beyond the virtual realm'
        ),
        LocationFact(
          title: 'How to get there',
          text: 'Kyoto airport, with several terminal, is located 16 kilometers south of the city and is also known as Kyoto. Kyoto can also b e reached by transport links from other regional airports.'
        )
      ]
    );
  }
}