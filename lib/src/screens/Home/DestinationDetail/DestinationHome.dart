import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/CarouselImage.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/DestinationDetails.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/DetailsInfoCard.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/FloatingCTA.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/Gallery.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/IconFeature.dart';
import 'package:trippy_escape_v3/src/screens/Home/DestinationDetail/ManyDetailsPage.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/SearchChip.dart';
import 'package:trippy_escape_v3/src/screens/Home/Search/SearchData.dart';

class DestinationHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchData(
                    searchText: "Bali",
                    date: "7th Jul - 11th Jul",
                    room: "1 Room",
                    guests: "1 Guest",
                  ),
                ),
                GFCarousel(
                    enableInfiniteScroll: false,
                    enlargeMainPage: false,
                    viewportFraction: 0.88,
                    pauseAutoPlayOnTouch: Duration(seconds: 10),
                    items: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: Gallery(),
                            ),
                          );
                        },
                        child: CarouselImage(
                          image: "images/feedImage1.jpg",
                        ),
                      ),
                      CarouselImage(
                        image: "images/feedImage1.jpg",
                      ),
                      CarouselImage(
                        image: "images/feedImage1.jpg",
                      ),
                    ]),
                DestinationDetails(
                  manyMoreButton: (){
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: ManyDetailsPage(),
                      ),
                    );
                  },
                  title: "The Jungle Resort",
                  description:
                      "Loreum ipsum doriet wit emaet amite loreum impris apent larg harty bhait acnd",
                  rating: 3,
                  iconFeature: [
                    IconFeature(
                        icon: Container(
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/inbiot.appspot.com/o/wifi.png?alt=media&token=fe253c07-1c0d-40a0-b62b-fa8d00747157",
                          ),
                          width: 16,
                        ),
                        label: "Wi-Fi"),
                    IconFeature(
                        icon: Container(
                          width: 16,
                          height: 16,
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/inbiot.appspot.com/o/spa.png?alt=media&token=7a41964c-272d-484d-ade9-5234c0a4dd74"),
                        ),
                        label: "Spa"),
                    IconFeature(
                        icon: Container(
                          width: 16,
                          height: 16,
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/inbiot.appspot.com/o/roomservice.png?alt=media&token=84925bf5-7726-4807-bdde-606447589a4d"),
                        ),
                        label: "Room Service"),
                    IconFeature(
                        icon: Container(
                          width: 16,
                          height: 16,
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/inbiot.appspot.com/o/pool.png?alt=media&token=65ff2fff-5516-43a7-83ee-5822237596fd"),
                        ),
                        label: "Pool"),
                    IconFeature(
                        icon: Container(
                          width: 16,
                          height: 16,
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/inbiot.appspot.com/o/bar.png?alt=media&token=5b0b6504-060a-4b37-b1a4-8dde057f8f7c"),
                        ),
                        label: "In-House bar"),

                  ],
                ),
                GFCarousel(
                    enableInfiniteScroll: false,
                    enlargeMainPage: false,
                    viewportFraction: 0.85,
                    pauseAutoPlayOnTouch: Duration(seconds: 10),
                    items: [
                      DetailInfoCard(title: "Why book this hotel?", points: [
                        "This is a luxury boutique resort",
                        "It is in the middle of the forest and greenery",
                        "Special Services for Couples and Families",
                      ]),
                      DetailInfoCard(title: "When is", points: [
                        "This is a luxury boutique resort",
                        "It is in the middle of the forest and greenery",
                        "Special Services for Couples and Families",
                      ]),
                    ]),
                SizedBox(
                  height: cWidth / 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: cWidth / 20, vertical: cWidth / 40),
                  child: Text(
                    "Location",
                    style: kPrimaryTextStyle.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: cWidth / 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: cWidth / 20, vertical: cWidth / 40),
                  child: Container(
                    height: cWidth / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.greenAccent),
                  ),
                ),
                SizedBox(
                  height: cWidth / 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: cWidth / 20, vertical: cWidth / 40),
                  child: Text(
                    "Landmarks",
                    style: kPrimaryTextStyle.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: cWidth / 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: cWidth / 20,
                  ),
                  child: Wrap(
                    spacing: 8,
                    children: <Widget>[
                      CustomChip(
                        country: "Forest",
                        hasDate: false,
                      ),
                      CustomChip(
                        country: "Waterfall",
                        hasDate: false,
                      ),
                      CustomChip(
                        country: "Loreum Ipsum",
                        hasDate: false,
                      ),
                      CustomChip(
                        country: "Something",
                        hasDate: false,
                      ),
                      CustomChip(
                        country: "Plantation",
                        hasDate: false,
                      ),
                      CustomChip(
                        country: "Loreum Ipsum",
                        hasDate: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: cWidth / 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: cWidth / 20, vertical: cWidth / 40),
                  child: Text(
                    "Hotel Rules & Regulations",
                    style: kPrimaryTextStyle.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: cWidth / 25),
                  ),
                ),
                GFCarousel(
                    enableInfiniteScroll: false,
                    enlargeMainPage: false,
                    viewportFraction: 0.85,
                    items: [
                      DetailInfoCard(title: "Guest Profiles", points: [
                        "Lorem Ipsum is simply dummy text of the printing.",
                        "Lorem Ipsum has been the industry's",
                        "It is a long established fact that a reader will be distracted by",
                      ]),
                      DetailInfoCard(title: "Payment", points: [
                        "This is a luxury boutique resort",
                        "It is in the middle of the forest and greenery",
                        "Special Services for Couples and Families",
                      ]),
                    ]),
                SizedBox(
                  height: cWidth / 5,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: cWidth / 20),
              child: FloatingCTA(
                price: "7,900",
                adults: 2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
