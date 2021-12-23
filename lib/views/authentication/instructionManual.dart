import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import views
import 'package:ui_fresh_app/views/authentication/forgotPassword.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:blur/blur.dart';

class instructionScreen extends StatelessWidget {
  const instructionScreen({Key? key}) : super(key: key);

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
              SizedBox(height: 82),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Instruction Manual',
                    style: TextStyle(
                      fontFamily: 'SFProText',
                      fontSize: title28,
                      color: blueWater,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(height: 32),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'To be able to recover your password, please follow these steps with us:',
                          style: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: content16,
                              color: blackLight,
                              fontWeight: FontWeight.w400,
                              height: 1.6),
                          textAlign: TextAlign.left,
                        )),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content16,
                                color: blackLight,
                                fontWeight: FontWeight.w400,
                                height: 1.6),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Step 1: ',
                                style: TextStyle(
                                  color: blueWater,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Entering your registered email in the textfield.',
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content16,
                                color: blackLight,
                                fontWeight: FontWeight.w400,
                                height: 1.6),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Step 2: ',
                                style: TextStyle(
                                  color: blueWater,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: 'Pressing the ',
                              ),
                              TextSpan(
                                text: 'Recovery Password ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: 'button to recover the password.',
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content16,
                                color: blackLight,
                                fontWeight: FontWeight.w400,
                                height: 1.6),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Step 3: ',
                                style: TextStyle(
                                  color: blueWater,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Accessing email address you’ve used to register and check it!',
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content16,
                                color: blackLight,
                                fontWeight: FontWeight.w400,
                                height: 1.6),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Step 4: ',
                                style: TextStyle(
                                  color: blueWater,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Clicking on a reset link in the mail and entering new password.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Divider(
                color: blackLight.withOpacity(0.5),
                thickness: 0.5,
                indent: 16,
                endIndent: 16,
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'For any questions or problems' +
                              '\n' +
                              'please email us at',
                          style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: content16,
                            color: blackLight.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            height: 1.4
                          ),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(height: 24),
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'HelpFresh@gmail.com',
                          style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: title18,
                            foreground: Paint()..shader = blueGradient,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    //action navigate to dashboard screen
                    onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => forgotScreen(),
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
                        "Done!",
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
        )
    );
  }
}
