import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/SearchData.dart';

class ManyDetailsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchData(
              searchText: "Bali",
              date: "7th Jul - 11th Jul",
              room: "1 Room",
              guests: "1 Guest",
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(cWidth / 20, cWidth / 20, cWidth / 20, 0),
            child: MoreDetailsGrid(),
          )
        ],
      ),
    );
  }
}

class MoreDetailsGrid extends StatelessWidget {
  final TextStyle textStyle = kPrimaryTextStyle.copyWith(color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      itemCount: 18,
      itemBuilder: (BuildContext context, int index) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Basic Facilities", style: kSecondaryTextStyle.copyWith(color: Theme.of(context).primaryColor, fontSize: cWidth/25),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("- Wi-Fi", style: textStyle),
                      Text(
                        "- Pool", style: textStyle
                      ),
                      Text(
                        "- Room Service", style: textStyle
                      ),
                      Text(
                        "- Power Backup", style: textStyle
                      ),Text(
                        "- Elevator", style: textStyle
                      ),Text(
                        "- A/C", style: textStyle
                      ),Text(
                        "- LAN", style: textStyle
                      ),Text(
                        "- Dry Cleaning", style: textStyle
                      ),Text(
                        "- Private Pools", style: textStyle
                      ),Text(
                        "- Parking", style: textStyle
                      ),Text(
                        "- Ironing", style: textStyle
                      ),Text(
                        "- Refrigerator", style: textStyle
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 3.2 : 3.2),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
