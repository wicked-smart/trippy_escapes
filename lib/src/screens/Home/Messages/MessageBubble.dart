import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isSender;

  MessageBubble({this.sender, this.text, this.isSender});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: isSender?CrossAxisAlignment.start:CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: isSender?Colors.transparent:Colors.grey),
                  color: isSender ? Colors.blueGrey.withOpacity(0.5) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: isSender ? Radius.circular(10) : Radius.circular(0),
                      bottomRight: isSender?Radius.circular(0):Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "$text",
                    style: kPrimaryTextStyle.copyWith(
                        fontSize: cWidth / 25,
                        color: isSender ? Colors.black : Colors.black,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text("9:48 PM", style: kPrimaryTextStyle.copyWith(fontSize: cWidth/40),),
              )
            ],
          ),
        ],
      ),
    );
  }
}
