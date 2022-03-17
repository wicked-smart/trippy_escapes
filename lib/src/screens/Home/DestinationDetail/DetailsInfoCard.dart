import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class DetailInfoCard extends StatelessWidget {
  final String title;
  final List<String> points;

  DetailInfoCard({this.title, this.points});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(cWidth/20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: cWidth/30),
              child: Text(
                title,
                style: kPrimaryTextStyle.copyWith(
                    color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: cWidth/40),
              child: Text("1. "+points[0], style: kPrimaryTextStyle.copyWith(color: Theme.of(context).primaryColor),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: cWidth/40),
              child: Text("2. "+points[1], style: kPrimaryTextStyle.copyWith(color: Theme.of(context).primaryColor),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: cWidth/40),
              child: Text("3. "+points[2], style: kPrimaryTextStyle.copyWith(color: Theme.of(context).primaryColor),),
            ),
          ],
        ),
      ),
    );
  }
}


