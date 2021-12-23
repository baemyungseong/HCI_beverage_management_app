import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import views
import 'package:ui_fresh_app/views/authentication/signIn.dart';
import 'package:ui_fresh_app/views/authentication/forgotpassword.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:blur/blur.dart';

class checkinEmailScreen extends StatelessWidget {
  const checkinEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(appPadding),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(background),
                  fit: BoxFit.cover),
            ),
            child: Column(children: [
              SizedBox(height: 80),
              Container(
                alignment: Alignment.center,
                child: Image.asset(atCheckPerspective, scale: 1),
              ),
              SizedBox(height: 40),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Check in Your Mail!',
                    style: TextStyle(
                      fontFamily: 'SFProText',
                      fontSize: title28,
                      color: blackLight,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(height: 8),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'We just emailed you with the reset link to' + '\n' + 'reset your password.',
                    style: TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: content14,
                        color: blackLight,
                        fontWeight: FontWeight.w400,
                        height: 1.6
                    ),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(height: 32),
              Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    //action navigate to dashboard screen
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signInScreen(),
                        ),
                      );
                    },
                    child: AnimatedContainer(
                      alignment: Alignment.center,
                      duration: Duration(milliseconds: 300),
                      height: 52,
                      width: 240,
                      decoration: BoxDecoration(
                        color: blueWater,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                          BoxShadow(
                            color: black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 64,
                            offset:
                                Offset(15, 15), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Text(
                        "Come Back to Login",
                        style: TextStyle(
                            color: whiteLight,
                            fontFamily: 'SFProText',
                            fontWeight: FontWeight.w600,
                            fontSize: textButton20),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Recovering another account? ',
                    style: TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: content14,
                        color: blackLight.withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                        height: 1.6),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => forgotScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Recover now!',
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: content14,
                          color: blueWater,
                          fontWeight: FontWeight.w600,
                          height: 1.6),
                    ),
                  ),
                ],
              )
            ]
        )
      )
    );
  }
}
