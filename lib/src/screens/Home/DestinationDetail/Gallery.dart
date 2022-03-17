import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/CarouselImage.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/PhotoViewer.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
            child: Container(
              width: cWidth,
              height: cWidth / 8,
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    "The Jungle Resort",
                    style: kSecondaryTextStyle.copyWith(fontSize: cWidth / 20),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).accentColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: cWidth / 10,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 10),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Chip(
                        label: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            index == 0 ? "View" : "Facade",
                            style: kSecondaryTextStyle.copyWith(
                              fontSize: cWidth / 30,
                              color: index == 0
                                  ? Colors.white
                                  : Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: index == 0
                            ? Theme.of(context).primaryColor
                            : secondaryGrey,
                      ),
                    );
                  }),
            ),
          ),
          GFCarousel(
              enableInfiniteScroll: false,
              enlargeMainPage: false,
              viewportFraction: 0.88,
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              items: [
                CarouselImage(
                  image: "images/feedImage1.jpg",
                ),
                CarouselImage(
                  image: "images/feedImage1.jpg",
                ),
                CarouselImage(
                  image: "images/feedImage1.jpg",
                ),
              ]),
          Padding(
            padding: const EdgeInsets.all(16),
            child: StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: PhotoViewer(),
                          ),
                        );
                      },
                      child: Image.asset(
                        "images/feedImage1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 2 : 1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          )
        ],
      ),
    );
  }
}
