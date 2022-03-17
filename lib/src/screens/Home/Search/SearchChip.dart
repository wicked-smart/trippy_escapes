import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class CustomChip extends StatelessWidget {
  final String country;
  final String date;
  final bool hasDate;

  CustomChip({this.country, this.date, this.hasDate = true});

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: hasDate ? 0 : 2,
      backgroundColor: hasDate ? secondaryGrey : Colors.white.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            country,
            style: kSecondaryTextStyle.copyWith(
                fontSize: cWidth / 25, color: Theme.of(context).primaryColor),
          ),
          hasDate
              ? Text(
            " : " + date,
            style: kSecondaryTextStyle.copyWith(
                fontSize: cWidth / 25, color: Colors.grey),
          )
              : SizedBox(),
        ],
      ),
    );
  }
}
