import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Messages/Messages.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "Notifications"),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: cWidth / 20, vertical: cWidth / 40),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(cWidth / 30),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: kPrimaryTextStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: cWidth / 20),
                            ),
                            index.isOdd?Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: ClipRRect(
                                child: Container(
                                  child: Image.asset("images/feedImage1.jpg"),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ):SizedBox(),
                            Row(
                              children: <Widget>[
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9:45 PM",
                                    style: kPrimaryTextStyle.copyWith(
                                      fontSize: cWidth / 30,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: cHeight / 15,
            )
          ],
        ),
      ),
    );
  }
}
