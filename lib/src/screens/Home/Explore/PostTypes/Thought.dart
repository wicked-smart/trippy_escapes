import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Explore/PostTypes/Moment.dart';

class Thought extends StatelessWidget {
  final String text;
  final String name;

  Thought({this.text, this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, cWidth/15, cWidth/15, 0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: cWidth / 18,
                backgroundColor:
                Theme.of(context).primaryColor.withOpacity(0.5),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  name,
                  style: kPrimaryTextStyle.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: cWidth / 20),
                ),
              ),
              Spacer(),
              Like(),
              GestureDetector(
                onTap: (){},
                child: Icon(
                  Icons.more_vert,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                text,
                textAlign: TextAlign.justify,
                style: kPrimaryTextStyle.copyWith(color: Colors.white, fontSize: cWidth/20),
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
