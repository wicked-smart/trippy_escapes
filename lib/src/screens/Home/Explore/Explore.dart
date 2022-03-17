import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Explore/PostTypes/Moment.dart';
import 'package:trippy_escape_v3/src/screens/Home/Explore/PostTypes/Thought.dart';
import 'package:trippy_escape_v3/src/screens/Home/Explore/Stories.dart';
import 'package:trippy_escape_v3/src/screens/Home/Messages/Messages.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, title: "Explore"),
      body: ListView(
        children: <Widget>[
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: cWidth / 19),
            children: <Widget>[
              Stories(),
              Moment(
                name: "pavanJain01",
                image:
                    "images/feedImage1.jpg",
                isLiked: true, //this variable is not connected
              ),
              Moment(
                name: "kundanSethi5",
                image:
                    "images/feedImage.jpg",
                isLiked: true, //this variable is not connected
              ),
              Thought(
                text:
                    "This is a looong thought. It will goo on for a while so that it takes at least 2 lines if not 3. I hope it tkes 3 lines actually!",
                name: "harsha",
              ),
            ],
          ),
          SizedBox(
            height: cWidth / 10,
          )
        ],
      ),
    );
  }
}
