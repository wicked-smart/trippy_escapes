import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';
import 'package:trippy_escape_v3/src/screens/Home/HomeScreen.dart';
import 'package:trippy_escape_v3/src/screens/onboarding/SelectDOB.dart';
import 'package:trippy_escape_v3/src/screens/onboarding/SelectGender.dart';
import 'package:trippy_escape_v3/src/screens/GetStarted.dart';
import 'package:trippy_escape_v3/src/screens/onboarding/selectCountries.dart';
import 'package:trippy_escape_v3/src/screens/onboarding/signupScreen.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trippy Escapes',
      builder: (context, child) {
        return MediaQuery(
          child: child,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      routes: {
        "/": (context) => MyHomeScreen(),
        "/signupScreen": (context) => SignUpScreen(),
        "/selectGender": (context) => SelectGender(),
        "/DOB": (context) => DOB(),
        "/selectCountries": (context) => SelectCountries(),
        "/homeScreen": (context) => HomeScreen(),
      },
      initialRoute: "/",
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white.withOpacity(0.3),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: const BorderSide(color: Colors.white, width: 0.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        primaryColor: Color(0XFFFD973C),
        accentColor: Color(0XFFFFC441),
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          headline4: kPrimaryTextStyle,
        ),
        buttonTheme: ButtonThemeData(
          minWidth: 130,
          height: 45,
          disabledColor: Colors.grey,
          buttonColor: Colors.white.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
