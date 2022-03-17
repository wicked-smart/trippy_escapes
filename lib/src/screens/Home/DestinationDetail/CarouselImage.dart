import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/Gallery.dart';

class CarouselImage extends StatelessWidget {
  final String image;

  CarouselImage({this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          "images/feedImage1.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
