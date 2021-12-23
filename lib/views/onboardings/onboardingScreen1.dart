import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class onboardingScreen1 extends StatelessWidget {
  const onboardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Change status bar color to black
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
              SizedBox(height: 108),
              Container(
                alignment: Alignment.center,
                child: Image.asset(obChosingDrink, scale: 1),
              ),
              SizedBox(height: 56),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Let’s Choose Your Favourite Drinks!',
                          style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: title32,
                            color: blackLight,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )
                    ),
                    SizedBox(height: 16),
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Choose favorite drink as life brings joy to us' + '\n' + 'Our menu will serve even the most' + '\n' + 'demanding customers!',
                          style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: content16,
                            color: grey3,
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.center,
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
