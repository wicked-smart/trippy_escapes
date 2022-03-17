import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Messages/MessageBubble.dart';

class ActiveChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(FontAwesomeIcons.longArrowAltLeft, color: Theme.of(context).primaryColor,), onPressed: () {
          Navigator.pop(context);
        }),
        title: Text(
          "Pavan Jain",
          style:kPrimaryTextStyle.copyWith(fontSize: cWidth / 20, color: Theme.of(context).primaryColor,),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                return MessageBubble(
                  isSender: true,
                  text: "Hello! How are you doing?",
                  sender: "Anto Philip",
                );
              }),
              height: cHeight,
              width: cWidth,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: (){},
                      icon: Icon(
                        Icons.face,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: Theme.of(context).primaryColor,
                      maxLines: 1,
                      style: kPrimaryTextStyle.copyWith(color: Theme.of(context).primaryColor, fontSize: cWidth / 20),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: kPrimaryTextStyle.copyWith(
                                color: Colors.blueGrey, fontSize: cWidth / 20),
                        hintText: "Type a message",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: (){},
                      icon: Icon(
                        Icons.send,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


