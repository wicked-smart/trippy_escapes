import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class Moment extends StatelessWidget {
  final String name;
  final bool isLiked;
  final String image;

  Moment({this.name, this.isLiked, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, cWidth/15, cWidth/15, 0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: cWidth / 18,
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.5),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  name,
                  style: kSecondaryTextStyle.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: cWidth / 20),
                ),
              ),
              Spacer(),
              Like(),
              GestureDetector(
                onTap: (){},
                child: Icon(
                  Icons.more_vert,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                child: Image.asset(image),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Like extends StatefulWidget {
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool isLiked = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isLiked ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () {
          setState(() {
            isLiked = !isLiked;
          });
        });
  }
}
