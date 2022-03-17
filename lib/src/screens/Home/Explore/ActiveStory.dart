import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class ActiveStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: cHeight,
        child: MoreStories(),
      ),
    );
  }
}

class MoreStories extends StatefulWidget {
  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<MoreStories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          StoryView(
            [
              StoryItem.text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  Colors.blue,
                  fontSize: cWidth / 20),
              StoryItem.text("Nice!\n\nTap to continue.", Colors.red,
                  fontSize: cWidth / 20),
              StoryItem.pageImage(
                NetworkImage(
                    "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg"),
                caption: "Still sampling",
              ),
            ],
            onStoryShow: (s) {
              print("Showing a story");
            },
            onComplete: () {
              print("Completed a cycle");
            },
            progressPosition: ProgressPosition.bottom,
            repeat: false,
            controller: storyController,
          ),
          Padding(
            padding: EdgeInsets.only(top: cWidth / 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: cWidth / 22,
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Pavan Jain",
                  style: kPrimaryTextStyle.copyWith(
                      color: Colors.white, fontSize: cWidth / 20),
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
