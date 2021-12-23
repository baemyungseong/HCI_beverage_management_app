import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:iconsax/iconsax.dart';
import 'package:meta/meta.dart';

class accountNotificationsScreen extends StatefulWidget {

  accountNotificationsScreen({Key? key}): super(key: key);

  @override
  _accountNotificationsScreenState createState() => _accountNotificationsScreenState();
}

class _accountNotificationsScreenState extends State<accountNotificationsScreen> {

  _accountNotificationsScreenState();

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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 54),
                IconButton(
                  padding: EdgeInsets.only(left: appPadding),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Iconsax.arrow_square_left,
                      size: 32, color: blackLight),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                      fontFamily: "SFProText",
                      fontSize: 24.0,
                      color: black,
                      fontWeight: FontWeight.w700,
                      height: 1.6,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  height: 631,
                  padding: EdgeInsets.only(left: 28, right: 28),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 10,
                          // itemCount: projects.length,
                          itemBuilder: (context, index) {
                            return Container(
                                width: 319,
                                height: 96,
                                decoration: BoxDecoration(
                                    color: blueLight,
                                    borderRadius: BorderRadius.all(Radius.circular(8))),
                                margin: EdgeInsets.only(top: 8, bottom: 8.0),
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 4, top: 4),
                                        width: 56,
                                        height: 56,
                                        decoration: new BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  // '${projects[index]!["background"]}'),
                                                  'https://i.imgur.com/FpZ9xFI.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        width: 211,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              text: TextSpan(
                                                style: TextStyle(
                                                  fontFamily: 'SFProText',
                                                  fontSize: 14,
                                                  color: black,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4
                                                ),
                                                children: const <TextSpan>[
                                                  TextSpan(
                                                    text: 'PAN ',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'just sent you a message: ',
                                                  ),
                                                  TextSpan(
                                                    text: '"How about the incident reports?',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              "Today, at 3:15 PM",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontFamily: "SFProText",
                                                  fontSize: 12.0,
                                                  color: grey8,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ]
                                        )
                                      ),
                                    ],
                                  ),
                                )
                            );
                          },
                        ),
                        SizedBox(height: 24),
                      ]
                    ),
                  )
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}

