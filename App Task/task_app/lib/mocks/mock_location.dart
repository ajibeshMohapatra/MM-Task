import 'package:task_app/models/location_fact.dart';
import '../models/location.dart';

class MockLocation extends Location{
  static final List<Location> items = [
    Location(
      name: 'Arashiyama Bamboo Groove',
        url: 'https://images.app.goo.gl/JFwR2fgfMkNFNGaT6',
        facts: <LocationFact>[
        LocationFact(
          title: 'Summary',
          text: 'Nullam consequat faucibus lectus, lobortis malesuada tortor gravida eu.',
        ),
        LocationFact(
          title: 'How to get there',
          text: 'Ut vel quam pellentesque, scelerisque felis vel, bibendum neque.',
        ),
      ]
    ),
    Location(
        name: 'Mount Fuji',
        url: 'https://images.app.goo.gl/ppiJE8KT9gtB5cnAA',
        facts: <LocationFact>[
          LocationFact(
            title: 'Summary',
            text: 'Praesent laoreet, diam quis sagittis mollis, ex urna gravida sem, vehicula consectetur quam erat eu quam.',
          ),
          LocationFact(
            title: 'How to get there',
            text: 'Aliquam rutrum magna nec ante mollis laoreet. Fusce sapien nisl, cursus pharetra dignissim sed, iaculis ut augue.',
          ),
        ]
    ),
    Location(
        name: 'Kiyomizu-dera',
        url: 'https://images.app.goo.gl/Rj8wZBcj6gTX8nmA6',
        facts: <LocationFact>[
          LocationFact(
            title: 'Summary',
            text: 'Aliquam erat volutpat. Aenean aliquam ipsum et elit venenatis, vel egestas nisi ornare.',
          ),
          LocationFact(
            title: 'How to get there',
            text: 'Praesent laoreet, diam quis sagittis mollis, ex urna gravida sem, vehicula consectetur quam erat eu quam.',
          ),
        ]
    ),
    Location(
        name: 'Kinkaku-ji ',
        url: 'https://images.app.goo.gl/ASNXyCBtuLdxLBMh6',
        facts: <LocationFact>[
          LocationFact(
            title: 'Summary',
            text: 'Vestibulum sagittis, augue in efficitur lobortis, enim elit scelerisque turpis, nec facilisis dolor felis sodales ipsum.',
          ),
          LocationFact(
            title: 'How to get there',
            text: 'In scelerisque tellus ac tristique suscipit. Nunc et ligula maximus, sagittis dolor id, varius tortor.',
          ),
        ]
    ),
    Location(
        name: 'Odaiba',
        url: 'https://images.app.goo.gl/Wmuw5qhzHAAPbRVX6',
        facts: <LocationFact>[
          LocationFact(
            title: 'Summary',
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices, dui et fringilla porttitor, nunc felis accumsan est.',
          ),
          LocationFact(
            title: 'How to get there',
            text: 'Vivamus vel nulla nec nisl mollis dictum. Donec dapibus massa nisi, in ornare libero placerat vel. Mauris aliquet eleifend lectus vel mollis.',
          ),
        ]
    ),

  ];
  static Location fetchAny(){
    return MockLocation.items[0];
  }

  static List<Location> fetchAll(){
    return MockLocation.items;
  }
}