import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class IconFeature extends StatelessWidget {
  final Widget icon;
  final String label;

  IconFeature({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          icon,
          Text(
            label,
            style: kPrimaryTextStyle.copyWith(
                color: Colors.grey, fontSize: cWidth / 40),
          )
        ],
      ),
    );
  }
}
