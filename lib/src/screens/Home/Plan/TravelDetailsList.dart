import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class TravelDetailsTable extends StatelessWidget {
  final String checkin, checkinDay, checkout, checkoutDay, adults, kids, rooms;
  final bool isSolo;

  TravelDetailsTable(
      {this.checkin,
        this.checkinDay,
        this.checkout,
        this.checkoutDay,
        this.adults,
        this.isSolo,
        this.kids,
        this.rooms});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Theme.of(context).primaryColor),
      children: [
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(cWidth / 20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "CHECK IN",
                    style: kPrimaryTextStyle.copyWith(
                        fontSize: cWidth / 25, color: Colors.grey),
                  ),
                  Text(
                    checkin,
                    style: kSecondaryTextStyle.copyWith(
                        fontSize: cWidth / 8.5, color: Colors.black),
                  ),
                  Text(
                    checkinDay,
                    style: kPrimaryTextStyle.copyWith(
                        fontSize: cWidth / 40, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(cWidth / 20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "CHECK OUT",
                    style: kPrimaryTextStyle.copyWith(
                        fontSize: cWidth / 25, color: Colors.grey),
                  ),
                  Text(
                    checkout,
                    style: kSecondaryTextStyle.copyWith(
                        fontSize: cWidth / 8.5, color: Colors.black),
                  ),
                  Text(
                    checkoutDay,
                    style: kPrimaryTextStyle.copyWith(
                        fontSize: cWidth / 40, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ]),
        isSolo
            ? SizedBox()
            : TableRow(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(cWidth / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Adults",
                      style: kPrimaryTextStyle.copyWith(
                          fontSize: cWidth / 25, color: Colors.grey),
                    ),
                    Text(
                      adults,
                      style: kSecondaryTextStyle.copyWith(
                          fontSize: cWidth / 8.5, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(cWidth / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Kids",
                      style: kPrimaryTextStyle.copyWith(
                          fontSize: cWidth / 25, color: Colors.grey),
                    ),
                    Text(
                      kids,
                      style: kSecondaryTextStyle.copyWith(
                          fontSize: cWidth / 8.5, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                cWidth / 12, cWidth / 20, cWidth / 20, cWidth / 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Rooms",
                  style: kPrimaryTextStyle.copyWith(
                      fontSize: cWidth / 25, color: Colors.grey),
                ),
                Text(
                  adults,
                  style: kSecondaryTextStyle.copyWith(
                      fontSize: cWidth / 8.5, color: Colors.black),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}