import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';

//import views
import 'package:ui_fresh_app/views/account/accountMessages.dart';
import 'package:ui_fresh_app/views/account/accountNotifications.dart';
import 'package:ui_fresh_app/views/account/accountSettings.dart';
import 'package:ui_fresh_app/views/account/changePassword.dart';
import 'package:ui_fresh_app/views/account/helpCenter.dart';
import 'package:ui_fresh_app/views/account/profileDetail.dart';
import 'package:ui_fresh_app/views/account/termCondition.dart';

//import others
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class profileManagementScreen extends StatelessWidget {
  const profileManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent),
        child: Scaffold(
          body: Container(
              // width: MediaQuery. of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(background), fit: BoxFit.cover),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 62),
                    IconButton(
                      padding: EdgeInsets.only(left: appPadding),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Iconsax.arrow_square_left, size: 32, color: blackLight),
                    ),
                    SizedBox(height: 8),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: appPadding, right: appPadding),
                        child: Column(
                          children: [
                            Text(
                              'Personal details',
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: title24,
                                color: blackLight,
                                fontWeight: FontWeight.w700,
                                height: 1.6,
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 24),
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(amGradientCard, scale: 1),
                        ),
                        Container(
                          height: 130,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 8, left: appPadding + 18, right: appPadding),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(amUserAvatar, scale: 10),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 4, right: appPadding + 18),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Noob Chảo',
                                        style: TextStyle(
                                          color: blackLight,
                                          fontFamily: 'SFProText',
                                          fontWeight: FontWeight.w700,
                                          fontSize: title24
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      SizedBox(
                                        child: new Center(
                                          child: new Container(
                                            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                                            height: 0.8,
                                            width: 150,
                                            color: blackLight,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'nhatkb2001@gmail.com',
                                        style: TextStyle(
                                          color: blackLight,
                                          fontFamily: 'SFProText',
                                          fontWeight: FontWeight.w500,
                                          fontSize: content12
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '84+ 902311293',
                                        style: TextStyle(
                                          color: blackLight,
                                          fontFamily: 'SFProText',
                                          fontWeight: FontWeight.w500,
                                          fontSize: content12
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '@26/03/2001',
                                        style: TextStyle(
                                          color: blackLight,
                                          fontFamily: 'SFProText',
                                          fontWeight: FontWeight.w500,
                                          fontSize: content12
                                        ),
                                      ),
                                    ],
                                  )
                                )
                              ],
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        accountMessagesScreen(),
                                  ),
                                );
                              },
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 56,
                                width: 101,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 64,
                                      offset: Offset(
                                          8, 8), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Iconsax.messages_3,
                                        size: 20, 
                                        color: blackLight
                                      )
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Messages",
                                      style: TextStyle(
                                        color: blackLight,
                                        fontFamily: 'SFProText',
                                        fontWeight: FontWeight.w500,
                                        fontSize: content12
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        accountNotificationsScreen(),
                                  ),
                                );
                              },
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 56,
                                width: 101,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 64,
                                      offset: Offset(
                                          8, 8), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Iconsax.notification_status,
                                        size: 20, 
                                        color: blackLight
                                      )
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Notifications",
                                      style: TextStyle(
                                        color: blackLight,
                                        fontFamily: 'SFProText',
                                        fontWeight: FontWeight.w500,
                                        fontSize: content12
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        accountSettingScreen(),
                                  ),
                                );
                              },
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 56,
                                width: 101,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 64,
                                      offset: Offset(
                                          8, 8), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Iconsax.setting_2,
                                        size: 20, 
                                        color: blackLight
                                      )
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Settings",
                                      style: TextStyle(
                                        color: blackLight,
                                        fontFamily: 'SFProText',
                                        fontWeight: FontWeight.w500,
                                        fontSize: content12
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 28),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: appPadding, right: appPadding),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              //action navigate to dashboard screen
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        profileDetailScreen(),
                                  ),
                                );
                              },
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 50,
                                width: 319,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: black.withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(0, 2), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 24),
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                        color: blackLight,
                                        fontFamily: 'SFProText',
                                        fontWeight: FontWeight.w600,
                                        fontSize: content16
                                      ),
                                    ),
                                    new Spacer(),
                                    Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Iconsax.arrow_right,
                                        size: 24, 
                                        color: blackLight
                                      )
                                    ),
                                    SizedBox(width: 12)
                                  ],
                                )
                              ),
                            )
                        ),
                        SizedBox(height: 20),
                        Container(
                            padding: EdgeInsets.only(left: appPadding, right: appPadding),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              //action navigate to dashboard screen
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        changePasswordScreen(),
                                  ),
                                );
                              },
                              child: AnimatedContainer(
                                  alignment: Alignment.center,
                                  duration: Duration(milliseconds: 300),
                                  height: 50,
                                  width: 319,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: black.withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 24),
                                      Text(
                                        "Change Password",
                                        style: TextStyle(
                                            color: blackLight,
                                            fontFamily: 'SFProText',
                                            fontWeight: FontWeight.w600,
                                            fontSize: content16),
                                      ),
                                      new Spacer(),
                                      Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Iconsax.arrow_right,
                                        size: 24, 
                                        color: blackLight
                                      )
                                    ),
                                      SizedBox(width: 12)
                                    ],
                                  )
                              ),
                            )
                        ),
                        SizedBox(height: 20),
                        Container(
                            padding: EdgeInsets.only(left: appPadding, right: appPadding),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              //action navigate to dashboard screen
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        conditionScreen(),
                                  ),
                                );
                              },
                              child: AnimatedContainer(
                                  alignment: Alignment.center,
                                  duration: Duration(milliseconds: 300),
                                  height: 50,
                                  width: 319,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: black.withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 24),
                                      Text(
                                        "Terms & Privacy Policy",
                                        style: TextStyle(
                                            color: blackLight,
                                            fontFamily: 'SFProText',
                                            fontWeight: FontWeight.w600,
                                            fontSize: content16),
                                      ),
                                      new Spacer(),
                                      Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Iconsax.arrow_right,
                                        size: 24, 
                                        color: blackLight
                                      )
                                    ),
                                      SizedBox(width: 12)
                                    ],
                                  )
                              ),
                            )
                        ),
                        SizedBox(height: 20),
                        Container(
                            padding: EdgeInsets.only(left: appPadding, right: appPadding),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              //action navigate to dashboard screen
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        helpCenterScreen(),
                                  ),
                                );
                              },
                              child: AnimatedContainer(
                                  alignment: Alignment.center,
                                  duration: Duration(milliseconds: 300),
                                  height: 50,
                                  width: 319,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: black.withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 24),
                                      Text(
                                        "Help",
                                        style: TextStyle(
                                            color: blackLight,
                                            fontFamily: 'SFProText',
                                            fontWeight: FontWeight.w600,
                                            fontSize: content16),
                                      ),
                                      new Spacer(),
                                      Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Iconsax.arrow_right,
                                        size: 24, 
                                        color: blackLight
                                      )
                                    ),
                                      SizedBox(width: 12)
                                    ],
                                  )
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                        padding: EdgeInsets.all(appPadding),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          //action navigate to dashboard screen
                          onTap: () => logoutDialog(context),
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 48,
                            width: 200,
                            decoration: BoxDecoration(
                              color: blackLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              boxShadow: [
                                BoxShadow(
                                  color: black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(
                                      0, 4), // changes position of shadow
                                ),
                                BoxShadow(
                                  color: black.withOpacity(0.1),
                                  spreadRadius: 0,
                                  blurRadius: 64,
                                  offset: Offset(
                                      15, 15), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text(
                              "Log out",
                              style: TextStyle(
                                  color: whiteLight,
                                  fontFamily: 'SFProText',
                                  fontWeight: FontWeight.w600,
                                  fontSize: textButton20),
                            ),
                          ),
                        )
                    ),
                  ]
              )
          ),
        )
    );
  }
}
