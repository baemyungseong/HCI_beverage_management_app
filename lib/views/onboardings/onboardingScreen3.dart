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

class onboardingScreen3 extends StatelessWidget {
  const onboardingScreen3({Key? key}) : super(key: key);

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
          padding: EdgeInsets.all(28),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundOnboarding), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(height: 35),
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(obTargetBrand, scale: 1),
              ),
              SizedBox(height: 36),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Our Mission',
                          style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: title40,
                            color: blackLight,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        )),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: content16,
                              color: grey3,
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                            ),
                            children: const <TextSpan>[
                              TextSpan(
                                text:
                                    'Vietnamese milk tea is for Vietnamese people, with Vietnamese soul and spirit creating Vietnamese youth style.',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: content16,
                              color: grey3,
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                            ),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'That is the task that ',
                              ),
                              TextSpan(
                                text: 'Fresh',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: blueWater,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' always wants to complete and must succeed with the chosen path.',
                              ),
                            ],
                          ),
                        ),
                      ],
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
