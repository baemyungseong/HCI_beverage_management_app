import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

//import screens
import 'package:ui_fresh_app/views/authentication/signin.dart';
import 'package:ui_fresh_app/views/authentication/instructionManual.dart';
import 'package:ui_fresh_app/views/authentication/checkinEmail.dart';

//import others
import 'package:flutter/services.dart';
import 'package:blur/blur.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class forgotScreen extends StatefulWidget {
  const forgotScreen({ Key? key }) : super(key: key);

  @override
  _forgotScreenState createState() => _forgotScreenState();
}

class _forgotScreenState extends State<forgotScreen> {

  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();

  final GlobalKey<FormState> _formemailKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              padding: EdgeInsets.all(appPadding),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(background),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  SizedBox(height: 32),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(atBallonPeople, scale: 1.8),
                  ),
                  SizedBox(height: 24),
                  Container(
                    child: Text(
                      'Recovery Password',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w600,
                        fontSize: title28,
                        color: blackLight,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    child: Text(
                      'Just enter the email address you’ve used to' + '\n' + 'register with us and we’ll send you a reset link!',
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: content14,
                          color: blackLight,
                          fontWeight: FontWeight.w400
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 32),
                  Form(
                    key: emailFormKey,
                    child: Container(
                      width: 319,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: blueLight),
                      alignment: Alignment.topCenter,
                      child: TextFormField(
                          style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: 16,
                            color: blackLight,
                            fontWeight: FontWeight.w400
                          ),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: [AutofillHints.email],
                          // //validator
                          // validator: (password) {
                          //   if (isPasswordValid(password.toString())) {
                          //     return null;
                          //   } else {
                          //     return '';
                          //   }
                          // },
                          decoration: InputDecoration(
                            contentPadding:
                              EdgeInsets.only(left: 20, right: 12),
                            hintStyle: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content16,
                                fontWeight: FontWeight.w400,
                                color: blackLight.withOpacity(0.5)),
                            hintText: "Enter your email",
                            filled: true,
                            fillColor: white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorStyle: TextStyle(
                              color: Colors.transparent,
                              fontSize: 0,
                              height: 0,
                            ),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => instructionScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Instruction manual',
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          color: blueWater,
                          fontSize: content14,
                          fontWeight: FontWeight.w500,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 48),
                  Container(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        //action navigate to dashboard screen
                        onTap: () {
                          // if (_formemailKey.currentState!.validate()) {
                            showSnackBar(context, 'Fresh sent you a reset link in your email!', 'success');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => checkinEmailScreen(),
                              ),
                            );
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   const SnackBar(content: Text('Processing Data')),
                            // );
                          // }
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
                                offset:
                                    Offset(0, 4), // changes position of shadow
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
                            "Recovery",
                            style: TextStyle(
                                color: whiteLight,
                                fontFamily: 'SFProText',
                                fontWeight: FontWeight.w600,
                                fontSize: textButton20),
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: 20),
                  Container(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
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
                              color: whiteLight.withOpacity(1),
                              border: Border(
                                top: BorderSide(
                                    width: 3, color: whiteLight),
                                left: BorderSide(
                                    width: 3, color: whiteLight),
                                right: BorderSide(
                                    width: 3, color: whiteLight),
                                bottom: BorderSide(
                                    width: 3, color: whiteLight),
                              ),
                              borderRadius: BorderRadius.circular(16),
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
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: blackLight,
                                  fontFamily: 'SFProtext',
                                  fontWeight: FontWeight.w600,
                                  fontSize: textButton20),
                            )
                        ),
                      )
                  ),
                ],
              ),
            )
        )
    );
  }
}