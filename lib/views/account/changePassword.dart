import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

//import others
import 'package:meta/meta.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_svg/flutter_svg.dart';

class changePasswordScreen extends StatefulWidget {
  const changePasswordScreen({ Key? key }) : super(key: key);

  @override
  _changePasswordScreenState createState() => _changePasswordScreenState();
}

class _changePasswordScreenState extends State<changePasswordScreen> with InputValidationMixin {

  bool isHiddenCurrentPassword = true;
  bool isHiddenNewPassword = true;
  bool isHiddenConfirmPassword = true;

  TextEditingController currentController = TextEditingController();
  GlobalKey<FormState> currentFormKey = GlobalKey<FormState>();
  TextEditingController newController = TextEditingController();
  GlobalKey<FormState> newFormKey = GlobalKey<FormState>();
  TextEditingController confirmController = TextEditingController();
  GlobalKey<FormState> confirmFormKey = GlobalKey<FormState>();

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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                SizedBox(height: 62),
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
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  child: Column(
                    children: [
                      Text(
                        'Change Password',
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
                SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: appPadding, right: appPadding),
                      child: Text(
                        "Current Password",
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: black,
                          fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.only(left: appPadding, right: appPadding),
                      alignment: Alignment.centerLeft,
                      child: Form(
                        autovalidate: true,
                        key: currentFormKey,
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
                              controller: currentController,
                              obscureText: isHiddenCurrentPassword,
                              keyboardType:
                                  TextInputType.visiblePassword,
                              autofillHints: [AutofillHints.password],
                              //validator
                              validator: (password) {
                                if (isPasswordValid(password.toString())) {
                                  return null;
                                } else {
                                  return '';
                                }
                              },
                              decoration: InputDecoration(
                                suffixIcon: InkWell(
                                onTap: _toggleCurrentPasswordView,
                                child: isHiddenCurrentPassword
                                  ? Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Icon(Iconsax.eye, size: 24, color: grey8)
                                        )
                                      ]
                                  )
                                  : Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(Iconsax.eye_slash, size: 24, color: grey8)
                                      )
                                    ]
                                  )
                                ),
                                contentPadding:
                                  EdgeInsets.only(left: 20, right: 12),
                                hintStyle: TextStyle(
                                    fontFamily: 'SFProText',
                                    fontSize: content16,
                                    fontWeight: FontWeight.w400,
                                    color: blackLight.withOpacity(0.5)),
                                hintText: "Enter your current password",
                                filled: true,
                                fillColor: blueLight,
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
                    ),
                  ]
                ),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: appPadding, right: appPadding),
                      child: Text(
                        "New Password",
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: black,
                          fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.only(left: appPadding, right: appPadding),
                      alignment: Alignment.centerLeft,
                      child: Form(
                        autovalidate: true,
                        key: newFormKey,
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
                              controller: newController,
                              obscureText: isHiddenNewPassword,
                              keyboardType:
                                  TextInputType.visiblePassword,
                              autofillHints: [AutofillHints.password],
                              //validator
                              validator: (password) {
                                if (isPasswordValid(password.toString())) {
                                  return null;
                                } else {
                                  return '';
                                }
                              },
                              decoration: InputDecoration(
                                suffixIcon: InkWell(
                                onTap: _toggleNewPasswordView,
                                child: isHiddenNewPassword
                                  ? Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Icon(Iconsax.eye, size: 24, color: grey8)
                                        )
                                      ]
                                  )
                                  : Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(Iconsax.eye_slash, size: 24, color: grey8)
                                      )
                                    ]
                                  )
                                ),
                                contentPadding:
                                  EdgeInsets.only(left: 20, right: 12),
                                hintStyle: TextStyle(
                                    fontFamily: 'SFProText',
                                    fontSize: content16,
                                    fontWeight: FontWeight.w400,
                                    color: blackLight.withOpacity(0.5)),
                                hintText: "Enter your new password",
                                filled: true,
                                fillColor: blueLight,
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
                    ),
                  ]
                ),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: appPadding, right: appPadding),
                      child: Text(
                        "Cofirm New Password",
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: black,
                          fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.only(left: appPadding, right: appPadding),
                      alignment: Alignment.centerLeft,
                      child: Form(
                        autovalidate: true,
                        key: confirmFormKey,
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
                              controller: confirmController,
                              obscureText: isHiddenConfirmPassword,
                              keyboardType:
                                  TextInputType.visiblePassword,
                              autofillHints: [AutofillHints.password],
                              //validator
                              validator: (password) {
                                if (isPasswordValid(password.toString())) {
                                  return null;
                                } else {
                                  return '';
                                }
                              },
                              decoration: InputDecoration(
                                suffixIcon: InkWell(
                                onTap: _toggleConfirmPasswordView,
                                child: isHiddenConfirmPassword
                                  ? Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Icon(Iconsax.eye, size: 24, color: grey8)
                                        )
                                      ]
                                  )
                                  : Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(Iconsax.eye_slash, size: 24, color: grey8)
                                      )
                                    ]
                                  )
                                ),
                                contentPadding:
                                  EdgeInsets.only(left: 20, right: 12),
                                hintStyle: TextStyle(
                                    fontFamily: 'SFProText',
                                    fontSize: content16,
                                    fontWeight: FontWeight.w400,
                                    color: blackLight.withOpacity(0.5)),
                                hintText: "Confirm your new password",
                                filled: true,
                                fillColor: blueLight,
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
                    ),
                  ]
                ),
                SizedBox(height: 64),
                Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        if(currentController.text != "" && newController.text != "" && confirmController.text != "") {
                          if (currentFormKey.currentState!.validate() && newFormKey.currentState!.validate() && confirmFormKey.currentState!.validate()) {
                            if(currentController.text == "password") {
                              if(newController.text == confirmController.text) {
                                showSnackBar(context, 'Successfully changed the password!', 'success');
                                Navigator.pop(context);
                              } else {
                                showSnackBar(context, "New password isn't confirmed correctly", 'error');
                              }
                            } else {
                              showSnackBar(context, 'Your current password is not correct!', 'error');
                            }
                          } else {
                            showSnackBar(context, 'Your password must be more than 6', 'error');
                          }
                        } else {
                          showSnackBar(context, 'Your password can not be blank!', 'error');
                        }
                      },
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        duration: Duration(milliseconds: 300),
                        height: 48,
                        width: 200,
                        decoration: BoxDecoration(
                          color: blackLight,
                          borderRadius: BorderRadius.circular(15),
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
                          "Confirm",
                          style: TextStyle(
                            color: white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: textButton20
                          ),
                        ),
                      ),
                    )
                ),
                SizedBox(height: 64),
              ]
            ),
          )
        ],
      ),
    );
  }

  //Create function
  void _toggleCurrentPasswordView() {
    setState(() {
      isHiddenCurrentPassword = !isHiddenCurrentPassword;
    });
  }

  void _toggleNewPasswordView() {
    setState(() {
      isHiddenNewPassword = !isHiddenNewPassword;
    });
  }

  void _toggleConfirmPasswordView() {
    setState(() {
      isHiddenConfirmPassword = !isHiddenConfirmPassword;
    });
  }
}

//Create validation
mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length >= 6;
}
