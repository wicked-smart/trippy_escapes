import 'package:flutter/material.dart';
import 'package:trippy_escape_v3/src/functions/common.dart';

class SelectGender extends StatefulWidget {
  @override
  _SelectGenderState createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    cHeight = MediaQuery.of(context).size.height;
    cWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/trippyescapes3.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(top: cWidth / 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  height: cHeight / 8,
                ),
                Image.asset(
                  "images/logo.png",
                  width: cWidth / 5,
                  height: cWidth / 5,
                ),
                Padding(
                  padding: EdgeInsets.only(top: cWidth / 20),
                  child: Text(
                    "Select your gender",
                    textAlign: TextAlign.center,
                    style: kPrimaryTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: cWidth / 20),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: cWidth / 40, horizontal: cWidth / 20),
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: List.generate(4, (index) {
                        return Padding(
                          padding: EdgeInsets.all(cWidth / 20),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: isSelected ? 4 : 0,
                                      color: Colors.white),
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Align(
                    child: Padding(
                  padding: EdgeInsets.only(bottom: cWidth / 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/DOB");
                    },
                    child: Text(
                      "Next",
                      style: kPrimaryTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
