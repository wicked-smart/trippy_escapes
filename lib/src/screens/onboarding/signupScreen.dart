import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool otpRequested = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(
              "images/signupScreenBG.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: cWidth / 15.0),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: cHeight / 8,
                ),
                Image.asset(
                  "images/logo.png",
                  width: cWidth / 5,
                  height: cWidth / 5,
                ),
                CustomTextField(
                  label: "Username",
                ),
                CustomTextField(
                  label: "Email",
                ),
                CustomTextField(
                  label: "Phone",
                ),
                otpRequested ? OTPField() : SizedBox(),
                Padding(
                  padding: EdgeInsets.only(top: cWidth / 20),
                  child: otpRequested
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {},
                              //color: Colors.white.withOpacity(0.7),
                              child: Text("Resend OTP",
                                  style: kPrimaryTextStyle.copyWith(
                                      fontWeight: FontWeight.bold)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/selectGender");
                              },
                              //color: Colors.white.withOpacity(0.7),
                              child: Text(
                                "Next",
                                style: kPrimaryTextStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  otpRequested = true;
                                });
                              },
                              //color: Colors.white.withOpacity(0.7),
                              child: Text("Get OTP",
                                  style: kPrimaryTextStyle.copyWith(
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                ),
                SizedBox(
                  height: cHeight / 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OTPField extends StatefulWidget {
  @override
  _OTPFieldState createState() => _OTPFieldState();
}

class _OTPFieldState extends State<OTPField> {
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "OTP",
            style: kPrimaryTextStyle.copyWith(
                fontSize: cWidth / 25, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: cWidth / 30),
            child: PinCodeTextField(
              autofocus: false,
//            controller: controller,
              pinBoxColor: Colors.white.withOpacity(0.3),
              pinBoxRadius: 10,
              hideCharacter: false,
              highlight: true,
              highlightColor: Colors.white,
              defaultBorderColor: Colors.white.withOpacity(0.3),
              hasTextBorderColor: Colors.white,
              maxLength: 6,
              hasError: hasError,

              onTextChanged: (text) {
                setState(() {
                  hasError = false;
                });
              },
              onDone: (text) {
                print("DONE $text");
              },
              pinBoxWidth: cHeight / 15,
              pinBoxHeight: cHeight / 15,
              wrapAlignment: WrapAlignment.center,
              pinBoxDecoration:
                  ProvidedPinBoxDecoration.defaultPinBoxDecoration,
              pinTextStyle:
                  TextStyle(fontSize: cWidth / 20, fontWeight: FontWeight.bold),
              pinTextAnimatedSwitcherTransition:
                  ProvidedPinBoxTextAnimation.scalingTransition,
              pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
            ),
          ),
          Visibility(
            child: Text(
              "Wrong PIN!",
              style: TextStyle(color: Colors.red),
            ),
            visible: hasError,
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final int maxLines;

  CustomTextField({this.label, this.obscureText = false, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: cWidth / 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: kPrimaryTextStyle.copyWith(
                fontSize: cWidth / 25, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TextField(
              cursorColor: Colors.black,
              maxLines: maxLines,
              obscureText: obscureText,
              style: kPrimaryTextStyle.copyWith(
                  color: Colors.black, fontSize: cWidth / 20),
            ),
          )
        ],
      ),
    );
  }
}
