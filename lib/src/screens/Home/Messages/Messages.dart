import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Messages/ChatTile.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/Search.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, title: "Messages"),
      body: ListView(
        children: <Widget>[
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return ChatTile();
            },
          ),
          SizedBox(
            height: cWidth / 15,
          )
        ],
      ),
    );
  }
}
