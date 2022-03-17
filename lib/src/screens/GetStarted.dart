import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:flutter/services.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    cHeight = MediaQuery.of(context).size.height;
    cWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(
              "images/loginScreenBG.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                "images/logo.png",
                width: cWidth / 5,
                height: cWidth / 5,
              ),
              SizedBox(
                height: cHeight / 10,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signupScreen");
                        },
                        //child: Colors.white.withOpacity(0.7),
                        child: Text("Get Started",
                            style: kPrimaryTextStyle.copyWith(
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Already have an account? Login instead!",
                        style: kPrimaryTextStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
