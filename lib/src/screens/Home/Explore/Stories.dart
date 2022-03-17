import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Explore/StoryAvatar.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: cHeight / 15,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(cWidth / 40),
                color: Theme.of(context).primaryColor),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.camera_alt,
                        color: Theme.of(context).primaryColor,
                      ),
                      radius: cWidth / 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: cWidth / 20,
                        child: Text(
                          "Aa",
                          style: kPrimaryTextStyle.copyWith(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: cWidth / 20),
                        ),),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: cWidth/25,
          ),
          Container(
            height: cHeight / 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(cWidth / 40),
                color: Theme.of(context).primaryColor),
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return StoryAvatar(
                    isNew: true,
                  );
                }),
          ),
          SizedBox(
            width: cWidth/15,
          ),
        ],
      ),
    );
  }
}