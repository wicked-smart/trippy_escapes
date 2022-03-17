import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/PopularChoices.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/ResultCard.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/SearchData.dart';

class SearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: cWidth / 20,
          ),
          SearchData(
            searchText: "Bali",
            date: "7th Jul - 11th Jul",
            room: "1 Room",
            guests: "1 Guest",
          ),
          ResultsList(),
        ],
      ),
    );
  }
}

class ResultsList extends StatelessWidget {
  const ResultsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: index == 2
              ? PopularChoices()
              : ResultCard(
                  image: "images/feedImage1.jpg",
                  title: "The Jungle Resort",
                  description:
                      "Loreum ipsum doriet wit emaet amite loreum impris apent larg harty bhait acnd",
                  rating: 3,
                  price: "Rs 6,980",
                  tags: [
                    "Spa",
                    "Near A Beach",
                    "Eco-Friendly",
                    "Food Included",
                  ],
                ),
        );
      },
    );
  }
}

