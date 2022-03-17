import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/SearchChip.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/SearchResults.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {})
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: cWidth / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    style: kPrimaryTextStyle.copyWith(
                        fontSize: cWidth / 30,
                        color: Theme.of(context).primaryColor),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: "Search for Destinations, Hotels and Resorts",
                      hintStyle: kSecondaryTextStyle.copyWith(
                          fontSize: cWidth / 30, color: Colors.grey),
                      icon: Icon(
                        Icons.search,
                        color: secondaryGrey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: cWidth / 20,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.access_time,
                    color: Colors.grey,
                    size: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      "Recently Searched",
                      style: kSecondaryTextStyle.copyWith(
                          fontSize: cWidth / 25, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Wrap(
                  spacing: 8,
                  children: <Widget>[
                    CustomChip(
                      country: "Bali",
                      date: "25 Jul - 29 Jul",
                    ),
                    CustomChip(
                      country: "Thailand",
                      date: "25 Jul - 29 Jul",
                    ),
                    CustomChip(
                      country: "Bali",
                      date: "25 Jul - 29 Jul",
                    ),
                    CustomChip(
                      country: "Sri Lanka",
                      date: "25 Jul - 29 Jul",
                    ),
                    CustomChip(
                      country: "Sri Lanka",
                      date: "25 Jul - 29 Jul",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: cWidth / 20,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.trending_up,
                    color: Colors.grey,
                    size: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      "Trending",
                      style: kSecondaryTextStyle.copyWith(
                          fontSize: cWidth / 25, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Wrap(
                  spacing: 8,
                  children: <Widget>[
                    CustomChip(
                      country: "Amstadam",
                      hasDate: false,
                    ),
                    CustomChip(
                      country: "Goa",
                      hasDate: false,
                    ),
                    CustomChip(
                      country: "Bali",
                      hasDate: false,
                    ),
                    CustomChip(
                      country: "Sri Lanka",
                      hasDate: false,
                    ),
                    CustomChip(
                      country: "Europe Trip",
                      hasDate: false,
                    ),
                    CustomChip(
                      country: "Iceland",
                      hasDate: false,
                    ),
                    CustomChip(
                      country: "South Asia",
                      hasDate: false,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  child: Text("Search Results"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: SearchResults(),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
