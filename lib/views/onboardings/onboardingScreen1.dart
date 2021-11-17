import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class onboardingScreen1 extends StatelessWidget {
  const onboardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Change status bar color to white
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundOnboarding), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(height: 60),
              Container(
                alignment: Alignment.topRight,
                child: Image.asset(obHandCalendar, scale: 1),
              ),
              SizedBox(height: 47),
              Container(
                padding: EdgeInsets.only(right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Manage Your Schedule',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: title32,
                            color: white,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.right,
                        )
                    ),
                    SizedBox(height: 8),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'We’re more than a application.' + '\n' + 'Customize Grow to work the way you do.',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: content16,
                              color: white,
                              fontWeight: FontWeight.w400,
                              height: 1.6),
                          textAlign: TextAlign.right,
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
