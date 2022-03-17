import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/Explore/Explore.dart';
import 'package:trippy_escape_v3/src/screens/Home/Messages/Messages.dart';
import 'package:trippy_escape_v3/src/screens/Home/Notifications/notifications.dart';
import 'package:trippy_escape_v3/src/screens/Home/Plan/StartPlan.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _myPage = PageController(initialPage: 0);
  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: IconButton(
                  iconSize: 30.0,
                  icon: Icon(
                    Icons.search,
                    color: activePage == 0
                        ? Colors.orange
                        : Colors.orangeAccent.withOpacity(0.5),
                  ),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(0);
                      activePage = 0;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: IconButton(
                  iconSize: 30.0,
                  icon: Icon(
                    Icons.message,
                    color: activePage == 1
                        ? Colors.orange
                        : Colors.orangeAccent.withOpacity(0.5),
                  ),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(1);
                      activePage = 1;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: IconButton(
                  iconSize: 30.0,
                  icon: Icon(
                    Icons.notifications,
                    color: activePage == 2
                        ? Colors.orange
                        : Colors.orangeAccent.withOpacity(0.5),
                  ),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(2);
                      activePage = 2;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: IconButton(
                  iconSize: 30.0,
                  icon: Icon(
                    Icons.menu,
                    color: activePage == 3
                        ? Colors.orange
                        : Colors.orangeAccent.withOpacity(0.5),
                  ),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(3);
                      activePage = 3;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _myPage,
        onPageChanged: (int) {
          print('Page Changes to index $int');
        },
        children: <Widget>[
          Explore(),
          Messages(),
          Notifications(),
          Center(
            child: Container(
              child: Text('Empty Body 3'),
            ),
          )
        ],
        physics:
            NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: StartPlan(),
                ),
              );
            },
            child: Image.asset(
              "images/logo.png",
              width: cWidth / 15,
            ),
            // elevation: 5.0,
          ),
        ),
      ),
    );
  }
}
