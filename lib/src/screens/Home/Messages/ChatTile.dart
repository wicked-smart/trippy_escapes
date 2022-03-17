import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trippy_escape_v3/src/screens/Home/Messages/ActiveChat.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: <Widget>[
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: ActiveChat(),
                  ),
                );
              },
              child: ListTile(
                leading:  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.ya-webdesign.com/images/funny-png-avatar-2.png"),
                    radius: cWidth / 15,
                  ),
                title: Text("User 1", style: kPrimaryTextStyle.copyWith(fontSize: cWidth/25),),
                subtitle: Text("Send me the pics please..", style: kPrimaryTextStyle.copyWith(color: Colors.grey),),
                trailing:   Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text("09:30 AM", style: kPrimaryTextStyle.copyWith(color: Colors.grey),),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: Center(
                          child: Text(
                            "1",
                            style: kPrimaryTextStyle.copyWith(fontSize: cWidth / 40, color: Colors.white),
                          )),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle),
                    )
                  ],
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
