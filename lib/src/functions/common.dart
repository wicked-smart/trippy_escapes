import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/Search.dart';

double cHeight;
double cWidth;

TextStyle kPrimaryTextStyle = GoogleFonts.montserrat();
TextStyle kSecondaryTextStyle = TextStyle(fontFamily: "Din");
Color secondaryGrey = Color(0xffF0F0F0);

AppBar buildAppBar(
  BuildContext context, {
  String title,
}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    title: Text(
      title,
      style: kPrimaryTextStyle.copyWith(
          color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        FontAwesomeIcons.search,
        color: Theme.of(context).primaryColor,
        size: cWidth / 20,
      ),
      onPressed: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: Search(),
          ),
        );
      },
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Icon(
          Icons.settings,
          color: Theme.of(context).primaryColor,
        ),
      )
    ],
  );
}
