import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/IconFeature.dart';

class DestinationDetails extends StatelessWidget {
  final String title;
  final String description;
  final double rating;
  final List<IconFeature> iconFeature;
  final Function manyMoreButton;

  DestinationDetails({this.description, this.rating, this.title, this.iconFeature, this.manyMoreButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: cWidth / 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  title,
                  style: kSecondaryTextStyle.copyWith(fontSize: cWidth / 18),
                ),
                Spacer(),
                SmoothStarRating(
                  starCount: 4,
                  rating: rating,
                  size: 16,
                  allowHalfRating: true,
                  color: Theme.of(context).primaryColor,
                  isReadOnly: true,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              description,
              style: kSecondaryTextStyle.copyWith(color: Colors.grey),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: cWidth / 20),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    iconFeature[0],
                    iconFeature[1],
                    iconFeature[2],
                    iconFeature[3],
                    iconFeature[4],
                    GestureDetector(
                      child: Text(
                        "And\nMany\nMore",
                        style: kPrimaryTextStyle.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: cWidth / 40),
                      ),
                      onTap: manyMoreButton,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}