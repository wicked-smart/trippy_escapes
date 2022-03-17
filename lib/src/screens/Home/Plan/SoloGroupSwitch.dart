import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

// ignore: must_be_immutable
class SoloGroupSwitch extends StatefulWidget {
  bool isSolo;

  SoloGroupSwitch({this.isSolo = true});

  @override
  _SoloGroupSwitchState createState() => _SoloGroupSwitchState();
}

class _SoloGroupSwitchState extends State<SoloGroupSwitch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.isSolo = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: widget.isSolo
                          ? Theme.of(context).primaryColor
                          : Colors.transparent),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Text(
                      "Solo",
                      style: kSecondaryTextStyle.copyWith(
                          fontSize: cWidth / 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.isSolo = false;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: widget.isSolo
                          ? Colors.transparent
                          : Theme.of(context).primaryColor),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Text(
                      "Group",
                      style: kSecondaryTextStyle.copyWith(
                          fontSize: cWidth / 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
