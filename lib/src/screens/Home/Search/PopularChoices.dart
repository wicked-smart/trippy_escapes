import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class PopularChoices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: cWidth / 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Popular Choices",
              style: kSecondaryTextStyle.copyWith(
                  color: Theme.of(context).primaryColor, fontSize: cWidth / 25),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 13,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: EdgeInsets.zero,
                    child: Container(
                      width: cWidth / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(8),
                              ),
                              child: Image.asset(
                                "images/feedImage1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Hotel Name Here",
                                  style: kSecondaryTextStyle.copyWith(
                                      fontSize: cWidth / 20),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6.0, horizontal: 4),
                                          child: Text(
                                            "Rs 6,980",
                                            style: kSecondaryTextStyle.copyWith(
                                                color: Colors.white,
                                                fontSize: cWidth / 30),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color:
                                            Theme.of(context).primaryColor,
                                            borderRadius:
                                            BorderRadius.circular(5))),
                                    Spacer(),
                                    SmoothStarRating(
                                      starCount: 4,
                                      rating: 4,
                                      size: 12,
                                      allowHalfRating: true,
                                      color: Theme.of(context).primaryColor,
                                      isReadOnly: true,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

