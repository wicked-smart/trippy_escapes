import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class SearchData extends StatelessWidget {
  final String searchText;
  final String date;
  final String room;
  final String guests;


  SearchData({this.date, this.guests, this.room, this.searchText,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: cWidth,
            height: cWidth / 8,
            child: Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Text(
                  searchText,
                  style: kSecondaryTextStyle.copyWith(fontSize: cWidth / 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: VerticalDivider(
                    color: Theme.of(context).primaryColor,
                    thickness: 2,
                  ),
                ),
                Text(
                  date,
                  style: kSecondaryTextStyle.copyWith(fontSize: cWidth / 25),
                ),
                Spacer(),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).accentColor),
          ),
          Wrap(
            spacing: 8,
            children: <Widget>[
              Chip(
                label: Text(
                  room,
                  style: kSecondaryTextStyle.copyWith(
                      fontSize: cWidth / 25, color: Colors.white),
                ),
                backgroundColor: Theme.of(context).primaryColor,
              ),
              Chip(
                label: Text(
                  guests,
                  style: kSecondaryTextStyle.copyWith(
                      fontSize: cWidth / 25, color: Colors.white),
                ),
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
