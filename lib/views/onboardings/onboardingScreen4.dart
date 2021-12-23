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

class onboardingScreen4 extends StatelessWidget {
  const onboardingScreen4({Key? key}) : super(key: key);

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
              SizedBox(height: 45),
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(obDrinkBrand, scale: 1),
              ),
              SizedBox(height: 8),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Our Drinks',
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
                                text: 'Fresh',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: blueWater,
                                ),
                              ),
                              TextSpan(
                                text: ' – there are many drinks to choose from in the menu. Each dish will have a different flavor and depending on the taste of each person, adjust the amount of ice sugar accordingly.',
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
                                text: 'For even the most demanding customers, a cup of milk tea scented with tea or milk is always ready to serve.',
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
