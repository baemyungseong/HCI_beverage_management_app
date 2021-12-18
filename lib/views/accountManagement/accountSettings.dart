import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

//import others
import 'package:meta/meta.dart';

class accountSettingScreen extends StatefulWidget {
  const accountSettingScreen({ Key? key }) : super(key: key);

  @override
  _accountSettingScreenState createState() => _accountSettingScreenState();
}

class _accountSettingScreenState extends State<accountSettingScreen> {

  String languageName = 'English';
  String themeMode = 'Dark Mode';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(background), fit: BoxFit.cover),
            ),
          ),
          SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 68),
              IconButton(
                padding: EdgeInsets.only(left: 28),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, size: 28, color: black),
              ),
              SizedBox(height: 16),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  padding: EdgeInsets.only(left: 28, right: 28),
                  child: Text(
                    "Setting",
                    style: TextStyle(
                      fontFamily: "SFProText",
                      fontSize: 24.0,
                      color: black,
                      fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 32),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 28, right: 28),
                      child: Text(
                        "Language",
                        style: TextStyle(
                            fontFamily: "SFProText",
                            fontSize: 20.0,
                            color: black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      child: Stack(children: [
                        Container(
                          margin: EdgeInsets.only(left: 28, right: 28),
                          width: 319,
                          height: 58,
                          decoration: BoxDecoration(
                            color: blueLight,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          padding: EdgeInsets.only(top: 18, left: 24),
                          child: Text(
                            "$languageName",
                            style: TextStyle(
                                fontFamily: "SFProText",
                                fontSize: 16.0,
                                color: grey8,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 28),
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                                iconColor: grey8,
                                collapsedIconColor: black,
                                title: Text(''),
                                children: [
                                  Container(
                                      width: 348,
                                      height: 70,
                                      padding:
                                          EdgeInsets.only(top: 12, left: 28),
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            languageName = "English";
                                          });
                                        },
                                        child: AnimatedContainer(
                                            padding: EdgeInsets.only(left: 24),
                                            alignment: Alignment.centerLeft,
                                            duration:
                                                Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              color: (languageName == "English")
                                                  ? blueWater
                                                  : blueLight,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              "English",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 16.0,
                                                  color: (languageName ==
                                                          "English")
                                                      ? white
                                                      : grey8,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      )),
                                  Container(
                                      width: 348,
                                      height: 70,
                                      padding:
                                          EdgeInsets.only(top: 12, left: 28),
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            languageName = "Vietnamese";
                                          });
                                        },
                                        child: AnimatedContainer(
                                            padding: EdgeInsets.only(left: 24),
                                            alignment: Alignment.centerLeft,
                                            duration:
                                                Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              color:
                                                  (languageName == "Vietnamese")
                                                      ? blueWater
                                                      : blueLight,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              "Vietnamese",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 16.0,
                                                  color: (languageName ==
                                                          "Vietnamese")
                                                      ? white
                                                      : grey8,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      )),
                                  Container(
                                      width: 348,
                                      height: 70,
                                      padding:
                                          EdgeInsets.only(top: 12, left: 28),
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            languageName = "France";
                                          });
                                        },
                                        child: AnimatedContainer(
                                            padding: EdgeInsets.only(left: 24),
                                            alignment: Alignment.centerLeft,
                                            duration:
                                                Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              color: (languageName == "France")
                                                  ? blueWater
                                                  : blueLight,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              "France",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 16.0,
                                                  color:
                                                      (languageName == "France")
                                                          ? white
                                                          : grey8,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      )),
                                  Container(
                                      width: 348,
                                      height: 70,
                                      padding:
                                          EdgeInsets.only(top: 12, left: 28),
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            languageName = "Chinese";
                                          });
                                        },
                                        child: AnimatedContainer(
                                            padding: EdgeInsets.only(left: 24),
                                            alignment: Alignment.centerLeft,
                                            duration:
                                                Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              color: (languageName == "Chinese")
                                                  ? blueWater
                                                  : blueLight,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              "Chinese",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 16.0,
                                                  color: (languageName ==
                                                          "Chinese")
                                                      ? white
                                                      : grey8,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      )),
                                  Container(
                                      width: 348,
                                      height: 70,
                                      padding:
                                          EdgeInsets.only(top: 12, left: 28),
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            languageName = "Indian";
                                          });
                                        },
                                        child: AnimatedContainer(
                                            padding: EdgeInsets.only(left: 24),
                                            alignment: Alignment.centerLeft,
                                            duration:
                                                Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              color: (languageName == "Indian")
                                                  ? blueWater
                                                  : blueLight,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              "Indian",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 16.0,
                                                  color:
                                                      (languageName == "Indian")
                                                          ? white
                                                          : grey8,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      )),
                                ]),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 28, right: 28),
                      child: Text(
                        "Theme Mode",
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: black,
                          fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      child: Stack(children: [
                        Container(
                          margin: EdgeInsets.only(left: 28, right: 28),
                          width: 319,
                          height: 58,
                          decoration: BoxDecoration(
                            color: blueLight,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          padding: EdgeInsets.only(top: 16, left: 24),
                          child: Text(
                            "$themeMode",
                            style: TextStyle(
                              fontFamily: "SFProText",
                              fontSize: 16.0,
                              color: grey8,
                              fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 28),
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                                iconColor: grey8,
                                collapsedIconColor: black,
                                title: Text(''),
                                children: [
                                  Container(
                                      width: 348,
                                      height: 70,
                                      padding:
                                          EdgeInsets.only(top: 12, left: 28),
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            themeMode = "Light Mode";
                                          });
                                        },
                                        child: AnimatedContainer(
                                            padding: EdgeInsets.only(left: 24),
                                            alignment: Alignment.centerLeft,
                                            duration:
                                                Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              color: (themeMode == "Light Mode")
                                                  ? blueWater
                                                  : blueLight,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              "Light Mode",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 16.0,
                                                  color: (themeMode ==
                                                          "Light Mode")
                                                      ? white
                                                      : grey8,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      )),
                                  Container(
                                      width: 348,
                                      height: 70,
                                      padding:
                                          EdgeInsets.only(top: 12, left: 28),
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            themeMode = "Dark Mode";
                                          });
                                        },
                                        child: AnimatedContainer(
                                            padding: EdgeInsets.only(left: 24),
                                            alignment: Alignment.centerLeft,
                                            duration:
                                                Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              color: (themeMode == "Dark Mode")
                                                  ? blueWater
                                                  : blueLight,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              "Dark Mode",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 16.0,
                                                  color:
                                                      (themeMode == "Dark Mode")
                                                          ? white
                                                          : grey8,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      )),
                                ]),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(height: 64),
                Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        showSnackBar(context, 'Successfully changed the setting!', 'success');
                        Navigator.pop(context);
                      },
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        duration: Duration(milliseconds: 300),
                        height: 48,
                        width: 200,
                        decoration: BoxDecoration(
                          color: blackLight,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                            BoxShadow(
                              color: black.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 60,
                              offset: Offset(10, 10),
                            ),
                          ],
                        ),
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            color: white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: textButton20
                          ),
                        ),
                      ),
                    )
                ),
                SizedBox(height: 64),
              ]),
            ]),
          ),
        ],
      ),
    );
  }
}
