import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Explore/ActiveStory.dart';

class StoryAvatar extends StatelessWidget {
  final bool isNew;

  StoryAvatar({this.isNew});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.fade,
              child: ActiveStory(),
            ),
          );
        },
        child: CircleAvatar(
          backgroundColor:
              isNew ? Colors.white : Colors.transparent,
          radius: cWidth / 19,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://scontent.fblr2-1.fna.fbcdn.net/v/t31.0-8/27748277_10215561397523525_5697162911647983422_o.jpg?_nc_cat=107&_nc_ohc=igZvQBCI7aQAQki99eg9V9pYflHESjg7qrd0qCvZKg2DVZCfrN08n2DbQ&_nc_ht=scontent.fblr2-1.fna&oh=933dc00856e33b63cbc2147c74c197fc&oe=5E3E657E"),
            radius: cWidth / 20,
          ),
        ),
      ),
    );
  }
}
