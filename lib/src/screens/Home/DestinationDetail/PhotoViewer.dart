import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class PhotoViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.only(left: cWidth/10),
            child: FloatingActionButton.extended(
              onPressed: (){
                Navigator.pop(context);
              },
              label: Text("Go back", style: kSecondaryTextStyle,),
            ),
          ),
        ],
      ),
      body: Container(
          child: PhotoView(
            imageProvider: AssetImage("images/feedImage1.jpg"),
          )
      ),
    );
  }
}
