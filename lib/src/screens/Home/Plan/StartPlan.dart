import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Plan/SoloGroupSwitch.dart';
import 'package:trippy_escape_v3/src/screens/Home/Plan/TravelDetailsList.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/SearchResults.dart';

class StartPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(cWidth / 5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: SoloGroupSwitch(isSolo: false),
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
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            width: cWidth,
            height: cWidth / 20,
          ),
          Column(
            children: <Widget>[
              Text(
                "CITY, AREA OR HOTEL",
                style: kPrimaryTextStyle.copyWith(
                    color: Colors.grey, fontSize: cWidth / 24),
              ),
              Text(
                "BALI",
                style: kSecondaryTextStyle.copyWith(fontSize: cWidth / 8),
              ),
              Text(
                "INDONESIA",
                style: kPrimaryTextStyle.copyWith(
                    color: Colors.grey, fontSize: cWidth / 30),
              ),
            ],
          ),
          SizedBox(
            width: cWidth,
            height: cWidth / 40,
          ),
          TravelDetailsTable(
            checkin: "07 JUL",
            checkinDay: "MONDAY",
            checkout: "11 JUL",
            checkoutDay: "FRIDAY",
            adults: "01",
            kids: "00",
            rooms: "01",
            isSolo: false,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  //color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  label: Text(
                    "Search",
                    style: kSecondaryTextStyle.copyWith(
                        color: Colors.white, fontSize: cWidth / 17),
                  ),
                  icon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      FontAwesomeIcons.search,
                      color: Colors.white,
                    ),
                  ),
                  //shape: RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.circular(15),
                  //),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: cWidth / 20),
            child: Text(
              "Offers/Packages for you",
              style: kSecondaryTextStyle.copyWith(
                  fontSize: cWidth / 20, color: Theme.of(context).primaryColor),
            ),
          ),
          ResultsList()
        ],
      ),
    );
  }
}
