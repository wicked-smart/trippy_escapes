import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class DOB extends StatefulWidget {
  @override
  _DOBState createState() => _DOBState();
}

class _DOBState extends State<DOB> {
  bool isSelected = false;
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    cHeight = MediaQuery.of(context).size.height;
    cWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/trippyescapes3.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(top: cWidth / 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  height: cHeight / 8,
                ),
                Image.asset(
                  "images/logo.png",
                  width: cWidth / 5,
                  height: cWidth / 5,
                ),
                Padding(
                  padding: EdgeInsets.only(top: cWidth / 20),
                  child: Text(
                    "Select Your Date Of Birth",
                    textAlign: TextAlign.center,
                    style: kPrimaryTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: cWidth / 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: cWidth / 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: cWidth / 20, horizontal: cWidth / 20),
                      child: Container(
                        height: cHeight / 4,
                        color: Colors.transparent,
                        child: CupertinoTheme(
                          data: CupertinoThemeData(
                            textTheme: CupertinoTextThemeData(
                              dateTimePickerTextStyle:
                                  kPrimaryTextStyle.copyWith(
                                      fontSize: cWidth / 20,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                          child: CupertinoDatePicker(
                              backgroundColor: Colors.transparent,
                              initialDateTime: dateTime,
                              mode: CupertinoDatePickerMode.date,
                              onDateTimeChanged: (dateTime) {
                                setState(() {
                                  dateTime = dateTime;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: cHeight / 5,
                ),
                Align(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: cWidth / 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/selectCountries");
                      },
                      child: Text(
                        "Next",
                        style: kPrimaryTextStyle.copyWith(
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
