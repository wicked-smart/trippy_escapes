import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class SelectCountries extends StatefulWidget {
  @override
  _SelectCountriesState createState() => _SelectCountriesState();
}

class _SelectCountriesState extends State<SelectCountries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: cWidth / 20),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, cWidth / 10, 0, cWidth / 20),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor, width: 1),
                  ),
                  contentPadding: EdgeInsets.zero,
                  hintText: "Search..",
                  hintStyle: kPrimaryTextStyle,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).primaryColor,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                style: kPrimaryTextStyle.copyWith(
                    color: Colors.black, fontSize: cWidth / 30),
              ),
            ),
            Align(
              child: Text(
                "Select the countries you've been to",
                style: kPrimaryTextStyle.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: cWidth / 20),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: cWidth / 10),
              width: cWidth / 1.5,
              height: cWidth / 1.5,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
            ),
//            Expanded(
//              child: Padding(
//                padding: EdgeInsets.all(cWidth/20),
//                child: FlutterEarth(
//                  url: 'http://mt0.google.com/vt/lyrs=r&hl=en&x={x}&y={y}&z={z}',
//                  radius: 120,
//                  showPole: false,
//                ),
//              ),
//            ),
            Wrap(
              runSpacing: 8,
              children: <Widget>[
                CustomChip(
                  country: "South Africa",
                  isChecked: true,
                ),
                CustomChip(
                  country: "Morocco",
                ),
                CustomChip(
                  country: "Ghana",
                ),
                CustomChip(
                  country: "Euthopia",
                ),
                CustomChip(
                  country: "Nigeria",
                ),
                CustomChip(
                  country: "Madagascar",
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: cWidth / 15),
              child: Container(
                color: Colors.grey.withOpacity(0.5),
                height: 1,
                width: cWidth / 1.2,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(),
              child: Container(
                width: cWidth,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    CustomRadio("Cape Town", true),
                    CustomRadio("Pretoria", true),
                    CustomRadio("Johannesburg", true),
                    CustomRadio("East London", false),
                    CustomRadio("Durban", false),
                    CustomRadio("Kimberley", false),
                    CustomRadio("Soweto", false),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: cWidth / 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/homeScreen");
                    },
                    //color: Colors.orange,
                    child: Text(
                      "Done",
                      style: kPrimaryTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/homeScreen");
                    },
                    //color: Colors.orangeAccent,
                    child: Text(
                      "Skip",
                      style: kPrimaryTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomRadio extends StatelessWidget {
  final String name;
  final bool isChecked;

  CustomRadio(this.name, this.isChecked);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: cWidth / 2.85,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: cWidth / 25,
              width: cWidth / 25,
              decoration: BoxDecoration(
                border:
                    isChecked ? null : Border.all(color: Colors.grey, width: 1),
                color: isChecked ? Colors.orange : Colors.transparent,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  name,
                  style: kPrimaryTextStyle.copyWith(
                      color: isChecked ? Colors.orange : Colors.grey,
                      fontSize: cWidth / 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final String country;
  final bool isChecked;

  CustomChip({this.country, this.isChecked = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        decoration: BoxDecoration(
            color: isChecked ? Colors.orange : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: isChecked
                    ? Colors.transparent
                    : Colors.grey.withOpacity(0.5))),
        margin: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: cWidth / 20, vertical: 5),
          child: Text(
            country,
            style: kPrimaryTextStyle.copyWith(
                fontSize: cWidth / 30,
                color: isChecked ? Colors.white : Colors.orange),
          ),
        ),
      ),
    );
  }
}
