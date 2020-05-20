import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/suit_wm.jpg',
            image_caption: 'Suit',
          ),

          Category(
            image_location: 'images/mini_skirt.jpg',
            image_caption: 'Skirt',
          ),

          Category(
            image_location: 'images/pants_belt.jpg',
            image_caption: 'Pants',
          ),

          Category(
            image_location: 'images/midi_dress.jpg',
            image_caption: 'Dress',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              )
          ),
        ),
      ),
    );
  }
}