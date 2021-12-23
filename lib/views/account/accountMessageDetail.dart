import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:meta/meta.dart';
import 'package:iconsax/iconsax.dart';

class messageDetailScreen extends StatefulWidget {
  messageDetailScreen({Key? key}): super(key: key);

  @override
  _messageDetailScreenState createState() => _messageDetailScreenState();
}

class _messageDetailScreenState extends State<messageDetailScreen> {

  _messageDetailScreenState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: blueLight
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 62),
                Container(
                  padding: EdgeInsets.only(right: 28),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(left: 28),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Iconsax.arrow_square_left,
                            size: 32, color: blackLight),
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         Screen(required, uid: uid),
                            //   ),
                            // );
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: blueWater,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 64,
                                  offset: Offset(8, 8),
                                ),
                                BoxShadow(
                                  color: black.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Container(
                                padding: EdgeInsets.zero,
                                alignment: Alignment.center,
                                child:
                                    Icon(Iconsax.call, size: 18, color: white)),
                          ),
                        )),
                    SizedBox(width: 8),
                    Container(
                        // padding: EdgeInsets.only(right: 28),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         Screen(required, uid: uid),
                            //   ),
                            // );
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: blackLight,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 64,
                                  offset: Offset(8, 8),
                                ),
                                BoxShadow(
                                  color: black.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Container(
                                padding: EdgeInsets.zero,
                                alignment: Alignment.center,
                                child: Icon(Iconsax.video,
                                    size: 18, color: white)),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "Haha Brown.D",
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: 24.0,
                        color: black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  height: 617,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36.0),
                        topRight: Radius.circular(36.0),
                      )),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 499,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 32),
                                Container(
                                  padding: EdgeInsets.only(left: 28, right: 28),
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        width: 32,
                                        height: 32,
                                        decoration: new BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  // '${projects[index]!["background"]}'),
                                                  'https://scontent.fsgn3-1.fna.fbcdn.net/v/t39.30808-1/239770954_3112191605770421_135227235785245757_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0c64ff&_nc_ohc=Ltvn8FE7R4MAX_CCBUB&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT_N67DmHVju0KQtXcOXogzl6SP9sSUR0uxbWxZLvRQNRw&oe=61C87D4E'),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Container(
                                        height: 54,
                                        width: 172,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomRight: Radius.circular(24.0)),
                                          color: whiteLight,
                                        ),
                                        child: Container(
                                          // padding: EdgeInsets.only(left: 16),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Can I call you back later?" + "\n" + "I'm busy right now!",
                                            style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: 12.0,
                                                color: black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "14:05",
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 12.0,
                                            color: grey8,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  padding: EdgeInsets.only(left: 28, right: 28),
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        width: 32,
                                        height: 32,
                                        decoration: new BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  // '${projects[index]!["background"]}'),
                                                  'https://scontent.fsgn3-1.fna.fbcdn.net/v/t39.30808-1/239770954_3112191605770421_135227235785245757_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0c64ff&_nc_ohc=Ltvn8FE7R4MAX_CCBUB&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT_N67DmHVju0KQtXcOXogzl6SP9sSUR0uxbWxZLvRQNRw&oe=61C87D4E'),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Container(
                                        height: 54,
                                        width: 172,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomRight: Radius.circular(24.0)),
                                          color: whiteLight,
                                        ),
                                        child: Container(
                                          // padding: EdgeInsets.only(left: 16),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Can I call you back later?" + "\n" + "I'm busy right now!",
                                            style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: 12.0,
                                                color: black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "14:11",
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 12.0,
                                            color: grey8,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  padding: EdgeInsets.only(left: 28, right: 28),
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        width: 32,
                                        height: 32,
                                        decoration: new BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  // '${projects[index]!["background"]}'),
                                                  'https://scontent.fsgn3-1.fna.fbcdn.net/v/t39.30808-1/239770954_3112191605770421_135227235785245757_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0c64ff&_nc_ohc=Ltvn8FE7R4MAX_CCBUB&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT_N67DmHVju0KQtXcOXogzl6SP9sSUR0uxbWxZLvRQNRw&oe=61C87D4E'),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Container(
                                        height: 54,
                                        width: 172,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomRight: Radius.circular(24.0)),
                                          color: whiteLight,
                                        ),
                                        child: Container(
                                          // padding: EdgeInsets.only(left: 16),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Can I call you back later?" + "\n" + "I'm busy right now!",
                                            style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: 12.0,
                                                color: black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "14:15",
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 12.0,
                                            color: grey8,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  padding: EdgeInsets.only(left: 28, right: 28),
                                  child: Row(
                                    children: [
                                      Text(
                                        "14:20",
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 12.0,
                                            color: grey8,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 87,
                                        width: 236,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0)),
                                          color: blueLight,
                                        ),
                                        child: Container(
                                          // padding: EdgeInsets.only(left: 16),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Of course man! Take your" +
                                                "\n" +
                                                "time please. We can meet later.",
                                            style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: 12.0,
                                                color: black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  padding: EdgeInsets.only(left: 28, right: 28),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 40),
                                      Container(
                                        height: 54,
                                        width: 172,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(24.0)),
                                          color: whiteLight,
                                        ),
                                        child: Container(
                                          // padding: EdgeInsets.only(left: 16),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Thank you, I'll be back" + "\n" + "soon",
                                            style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: 12.0,
                                                color: black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "14:23",
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 12.0,
                                            color: grey8,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  padding: EdgeInsets.only(left: 28, right: 28),
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        width: 32,
                                        height: 32,
                                        decoration: new BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  // '${projects[index]!["background"]}'),
                                                  'https://scontent.fsgn3-1.fna.fbcdn.net/v/t39.30808-1/239770954_3112191605770421_135227235785245757_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0c64ff&_nc_ohc=Ltvn8FE7R4MAX_CCBUB&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT_N67DmHVju0KQtXcOXogzl6SP9sSUR0uxbWxZLvRQNRw&oe=61C87D4E'),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Container(
                                        height: 54,
                                        width: 172,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomRight: Radius.circular(24.0)),
                                          color: whiteLight,
                                        ),
                                        child: Container(
                                          // padding: EdgeInsets.only(left: 16),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Thank you, I'll be back" + "\n" + "soon",
                                            style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: 12.0,
                                                color: black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "14:25",
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 12.0,
                                            color: grey8,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  padding: EdgeInsets.only(left: 28, right: 28),
                                  child: Row(
                                    children: [
                                      Text(
                                        "15:07",
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 12.0,
                                            color: grey8,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 87,
                                        width: 236,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0)),
                                          color: blueLight,
                                        ),
                                        child: Container(
                                          // padding: EdgeInsets.only(left: 16),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Hello, have you done yet? Let's" +
                                                "\n" +
                                                "continue to work!",
                                            style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: 12.0,
                                                color: black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  padding: EdgeInsets.only(left: 28, right: 28),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        width: 32,
                                        height: 32,
                                        decoration: new BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  // '${projects[index]!["background"]}'),
                                                  'https://scontent.fsgn3-1.fna.fbcdn.net/v/t39.30808-1/239770954_3112191605770421_135227235785245757_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0c64ff&_nc_ohc=Ltvn8FE7R4MAX_CCBUB&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT_N67DmHVju0KQtXcOXogzl6SP9sSUR0uxbWxZLvRQNRw&oe=61C87D4E'),
                                              fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Container(
                                        height: 87,
                                        width: 236,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomRight: Radius.circular(24.0)),
                                          color: whiteLight,
                                        ),
                                        child: Container(
                                          // padding: EdgeInsets.only(left: 16),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Yea man, I'm ready for now." +
                                                "\n" +
                                                "Let's talk about the project, OK?",
                                            style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: 12.0,
                                                color: black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "15:10",
                                            style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: 12.0,
                                                color: grey8,
                                                fontWeight: FontWeight.w400),
                                          ))
                                    ],
                                  ),
                                ),
                              ]
                            )
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 54,
                        width: 319,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 28, right: 28),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24.0)),
                          color: whiteLight,
                        ),
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 28),
                            Expanded(
                                child: Form(
                              child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontFamily: 'SFProText',
                                      fontSize: content14,
                                      color: black,
                                    ),
                                    hintText: "Type your message...",
                                  )),
                            )),
                            SizedBox(width: 20),
                            Container(
                                padding: EdgeInsets.only(right: 28),
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) =>
                                    //         Screen(required, uid: uid),
                                    //   ),
                                    // );
                                  },
                                  child: AnimatedContainer(
                                    alignment: Alignment.center,
                                    duration: Duration(milliseconds: 300),
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                      color: blueWater,
                                      borderRadius: BorderRadius.circular(24),
                                      boxShadow: [
                                        BoxShadow(
                                          color: black.withOpacity(0.25),
                                          spreadRadius: 0,
                                          blurRadius: 64,
                                          offset: Offset(8, 8),
                                        ),
                                        BoxShadow(
                                          color: black.withOpacity(0.2),
                                          spreadRadius: 0,
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Icon(Iconsax.send_1),
                                          iconSize: 18,
                                          color: white,
                                          onPressed: () {},
                                        )),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 40)
                    ],
                  )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
