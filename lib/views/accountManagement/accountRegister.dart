import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:meta/meta.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with InputValidationMixin {
  bool isHiddenCurrentPassword = true;
  bool isHiddenNewPassword = true;
  bool isHiddenConfirmPassword = true;
  late DateTime selectDate = DateTime.now();

  int selected = 0;

  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  GlobalKey<FormState> usernameFormKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> phoneFormKey = GlobalKey<FormState>();

  TextEditingController currentController = TextEditingController();
  GlobalKey<FormState> currentFormKey = GlobalKey<FormState>();
  TextEditingController newController = TextEditingController();
  GlobalKey<FormState> newFormKey = GlobalKey<FormState>();
  TextEditingController confirmController = TextEditingController();
  GlobalKey<FormState> confirmFormKey = GlobalKey<FormState>();

  Widget customRadio(String role, int index) {
    return Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = index;
            });
          },
          child: AnimatedContainer(
            child: Center(
              child: Text(
                role,
                style: TextStyle(
                  fontFamily: "SFProText",
                  fontSize: 16.0,
                  color: black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            alignment: Alignment.center,
            duration: Duration(milliseconds: 300),
            height: 48,
            width: index == 1 ? 180 : (index == 2 ? 123 : 148),
            decoration: BoxDecoration(
              color: (selected == index) ? blueLight : null,
              border: Border(
                top: BorderSide(width: 2, color: blueLight),
                left: BorderSide(width: 2, color: blueLight),
                right: BorderSide(width: 2, color: blueLight),
                bottom: BorderSide(width: 2, color: blueLight),
              ),
              borderRadius: BorderRadius.circular(8),
              // boxShadow: [
              //   BoxShadow(
              //     color: black.withOpacity(0.1),
              //     spreadRadius: 0,
              //     blurRadius: 8,
              //     offset: Offset(0, 4),
              //   ),
              // ],
            ),
          ),
        ));
  }

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 68),
              IconButton(
                padding: EdgeInsets.only(left: 28),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, size: 28, color: black),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.only(left: appPadding, right: appPadding),
                child: Text(
                  "Register new Password",
                  style: TextStyle(
                      fontFamily: "SFProText",
                      fontSize: 24.0,
                      color: black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 32),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  child: Text(
                    "Email",
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: 20.0,
                        color: black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  alignment: Alignment.centerLeft,
                  child: Form(
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
                              fontWeight: FontWeight.w400),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: [AutofillHints.email],
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
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  child: Text(
                    "UserName",
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: 20.0,
                        color: black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  alignment: Alignment.centerLeft,
                  child: Form(
                    key: usernameFormKey,
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
                              fontWeight: FontWeight.w400),
                          controller: usernameController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 20, right: 12),
                            hintStyle: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content16,
                                fontWeight: FontWeight.w400,
                                color: blackLight.withOpacity(0.5)),
                            hintText: "Enter your username",
                            filled: true,
                            fillColor: blueLight,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  child: Text(
                    "Phone number",
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: 20.0,
                        color: black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  alignment: Alignment.centerLeft,
                  child: Form(
                    key: phoneFormKey,
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
                              fontWeight: FontWeight.w400),
                          controller: phoneController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 20, right: 12),
                            hintStyle: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content16,
                                fontWeight: FontWeight.w400,
                                color: blackLight.withOpacity(0.5)),
                            hintText: "Enter your phone number",
                            filled: true,
                            fillColor: blueLight,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  child: Text(
                    "Date of birth",
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: 20.0,
                        color: black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () async {
                      String category = "dob";
                      DateTime? dt =
                          await datePickerDialog(context, selectDate, category);
                      if (dt != null) {
                        selectDate = dt;
                        setState(() {
                          selectDate != selectDate;
                        });
                      }
                      print(selectDate);
                    },
                    child: AnimatedContainer(
                        alignment: Alignment.center,
                        duration: Duration(milliseconds: 300),
                        height: 48,
                        width: 180,
                        decoration: BoxDecoration(
                          color: blueLight,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 12),
                            Container(
                                padding: EdgeInsets.zero,
                                alignment: Alignment.center,
                                child: Icon(
                                  Iconsax.calendar_1,
                                  size: 16,
                                  color: blackLight,
                                )),
                            SizedBox(width: 8),
                            Text(
                              "${DateFormat('yMMMMd').format(selectDate)}",
                              style: TextStyle(
                                color: blackLight,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 4),
                          ],
                        )),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  child: Text(
                    "Role",
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: 20.0,
                        color: black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12),
                      Column(
                        children: [
                          Row(
                            children: [
                              customRadio('Accountant', 1),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              customRadio('Serve', 2),
                              SizedBox(
                                width: 15,
                              ),
                              customRadio('Bartender', 3),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(height: 24),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                              fontWeight: FontWeight.w400),
                          controller: newController,
                          obscureText: isHiddenNewPassword,
                          keyboardType: TextInputType.visiblePassword,
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
                                                padding:
                                                    EdgeInsets.only(right: 20),
                                                child: Icon(Iconsax.eye,
                                                    size: 24, color: grey8))
                                          ])
                                    : Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                            Container(
                                                padding:
                                                    EdgeInsets.only(right: 20),
                                                child: Icon(Iconsax.eye_slash,
                                                    size: 24, color: grey8))
                                          ])),
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
                          )),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 24),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                              fontWeight: FontWeight.w400),
                          controller: confirmController,
                          obscureText: isHiddenConfirmPassword,
                          keyboardType: TextInputType.visiblePassword,
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
                                                padding:
                                                    EdgeInsets.only(right: 20),
                                                child: Icon(Iconsax.eye,
                                                    size: 24, color: grey8))
                                          ])
                                    : Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                            Container(
                                                padding:
                                                    EdgeInsets.only(right: 20),
                                                child: Icon(Iconsax.eye_slash,
                                                    size: 24, color: grey8))
                                          ])),
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
                          )),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 64),
              Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      if (currentController.text != "" &&
                          newController.text != "" &&
                          confirmController.text != "") {
                        if (currentFormKey.currentState!.validate() &&
                            newFormKey.currentState!.validate() &&
                            confirmFormKey.currentState!.validate()) {
                          if (currentController.text == "password") {
                            if (newController.text == confirmController.text) {
                              showSnackBar(
                                  context,
                                  'Successfully changed the password!',
                                  'success');
                              Navigator.pop(context);
                            } else {
                              showSnackBar(
                                  context,
                                  "New password isn't confirmed correctly",
                                  'error');
                            }
                          } else {
                            showSnackBar(
                                context,
                                'Your current password is not correct!',
                                'error');
                          }
                        } else {
                          showSnackBar(context,
                              'Your password must be more than 6', 'error');
                        }
                      } else {
                        showSnackBar(context, 'Your password can not be blank!',
                            'error');
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
                            fontSize: textButton20),
                      ),
                    ),
                  )),
              Row(
                children: [
                  Text(
                    'Total Money:',
                    style: TextStyle(
                      fontFamily: "SFProText",
                      fontSize: content16,
                      color: black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$2069.00',
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SFProText',
                      foreground: Paint()..shader = blueGradient,
                    ),
                  ),
                ],
              ),
            ]),
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
