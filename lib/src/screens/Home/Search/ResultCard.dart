import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/DestinationHome.dart';

class ResultCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double rating;
  final String price;
  final List<String> tags;

  ResultCard(
      {this.description,
        this.image,
        this.price,
        this.rating,
        this.tags,
        this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: DestinationHome(),
              ),
            );
          },
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.asset(image),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: cWidth / 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            title,
                            style: kSecondaryTextStyle.copyWith(
                                fontSize: cWidth / 18),
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
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(
                                description,
                                style: kSecondaryTextStyle.copyWith(
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: cWidth / 10,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: <Widget>[
                            Text(
                              tags[0].toString() +
                                  " | " +
                                  tags[1].toString() +
                                  " | " +
                                  tags[2].toString() +
                                  " | " +
                                  tags[3].toString(),
                              style: kSecondaryTextStyle.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: cWidth / 35),
                            ),
                            Spacer(),
                            Chip(
                              label: Text(
                                price,
                                style: kSecondaryTextStyle.copyWith(
                                    color: Colors.white),
                              ),
                              backgroundColor: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

