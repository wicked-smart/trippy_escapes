import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';


class FloatingCTA extends StatelessWidget {
  final String price;
  final int adults;
  FloatingCTA({this.adults, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              height: cWidth / 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    price,
                    style: kSecondaryTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: cWidth / 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Per Night / $adults Adults",
                      style: kSecondaryTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: cWidth / 25),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                ),
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Select Rooms",
                style: kSecondaryTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: cWidth / 25),
              ),
              height: cWidth / 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                ),
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
      width: cWidth,
    );
  }
}
