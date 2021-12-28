import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ui_fresh_app/views/account/profileManagement.dart';
import 'package:ui_fresh_app/views/account/accountNotifications.dart';
import 'package:ui_fresh_app/views/account/accountMessageDetail.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

// import others
import 'package:meta/meta.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';

class accountMessagesScreen extends StatefulWidget {

  accountMessagesScreen({Key? key}) : super(key: key);

  @override
  _accountMessagesScreenState createState() => _accountMessagesScreenState();
}

class _accountMessagesScreenState extends State<accountMessagesScreen> {

 List<String> imageUrls = ["https://i.imgur.com/FpZ9xFI.jpg", "https://i.imgur.com/vDMtz4T.jpg", 
 "https://i.imgur.com/FpZ9xFI.jpg", "https://i.imgur.com/vDMtz4T.jpg", "https://i.imgur.com/vDMtz4T.jpg", 
 "https://i.imgur.com/FpZ9xFI.jpg", "https://i.imgur.com/vDMtz4T.jpg", "https://i.imgur.com/vDMtz4T.jpg"];

List<String> names = ["Pan1", "BrownD", "Pan2", "Pan1", "BrownD", "Pan2", "Pan1", "BrownD", "Pan2"];

  _accountMessagesScreenState();

  late String task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: blueLight,
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
                      SizedBox(width: 6),
                      Container(
                        padding: EdgeInsets.only(left: 16),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) =>
                          //           profileManagementScreen(),
                          //     ),
                          //   ).then((value) {});
                          // },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: blueWater,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      // '${projects[index]!["background"]}'),
                                      'https://i.imgur.com/FpZ9xFI.jpg'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
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
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Noob Chảo',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'SFProText',
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2
                                ),
                              )),
                          SizedBox(height: 1),
                          Container(
                              // alignment: Alignment.topLeft,
                              child: Text('Accountant',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SFProText',
                                    color: grey8,
                                    fontWeight: FontWeight.w400,
                                    // height: 1.4
                                  )
                              )
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                          // padding: EdgeInsets.only(right: 28),
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => accountNotificationsScreen(),
                                ),
                              ).then((value) {});
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
                                      offset: Offset(8, 8)),
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
                                  child: Icon(Iconsax.notification,
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
                    "Messages",
                    style: TextStyle(
                      fontFamily: "SFProText",
                      fontSize: 24.0,
                      color: black,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                SizedBox(height: 24),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 28),
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
                            searchDialog(context);
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: blueWater,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Container(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center,
                              child: Icon(Iconsax.search_normal, size: 18, color: white)
                            ),
                          ),
                        )
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 367,
                        height: 48,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(left: 4, right: 4),
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          messageDetailScreen(),
                                    ),
                                  );
                                },
                                child: AnimatedContainer(
                                  alignment: Alignment.center,
                                  duration: Duration(milliseconds: 300),
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: blueWater,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 48,
                                    height: 48,
                                    decoration: new BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              // '${projects[index]!["background"]}'),
                                              imageUrls[index]),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              )
                            );
                          }
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  padding: EdgeInsets.only(left: 28, right: 28),
                  height: 545,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36)
                    ),
                    color: white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.only(top: 16),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(top: 12, bottom: 12),
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          messageDetailScreen(),
                                    ),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      width: 60,
                                      height: 60,
                                      decoration: new BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                // '${projects[index]!["background"]}'),
                                                imageUrls[index]),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 64,
                                      width: 232,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 180,
                                                child: Text(
                                                  names[index],
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    fontFamily: "SFProText",
                                                    fontSize: 14.0,
                                                    color: black,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.4
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                '14:05',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontFamily: "SFProText",
                                                  fontSize: 12.0,
                                                  color: black,
                                                  fontWeight: FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 8),
                                          Container(
                                            width: 232,
                                            child: Text(
                                              "Can I call you back later? I'm busy right now",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontFamily: "SFProText",
                                                  fontSize: 12.0,
                                                  color: black,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          SizedBox(height: 6)
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ),
                            );
                          }
                        ),
                        SizedBox(height: 24)
                      ]
                    )
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}