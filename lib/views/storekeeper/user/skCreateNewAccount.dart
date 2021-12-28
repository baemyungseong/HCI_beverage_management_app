import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

//import views
import 'package:ui_fresh_app/views/storekeeper/user/skCreateAccountSuccessfully.dart';

//import others
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:another_xlider/another_xlider.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

class skNewAccountCreatingScreen extends StatefulWidget {
  skNewAccountCreatingScreen({Key? key}) : super(key: key);

  @override
  _skNewAccountCreatingScreenState createState() =>
      _skNewAccountCreatingScreenState();
}

class _skNewAccountCreatingScreenState
    extends State<skNewAccountCreatingScreen> with InputValidationMixin{
  TextEditingController troubleNameController = TextEditingController();

  bool isCheckout = false;

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
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80 + 28),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: appPadding,
                        right: appPadding,
                        bottom: appPadding + 8),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 8),
                                      Container(
                                        child: Text(
                                          "Create New Account",
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 24.0,
                                            color: black,
                                            fontWeight: FontWeight.w700,
                                            height: 1.6,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 24),
                                      Container(
                                        child: Text(
                                          'Email',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 20.0,
                                            color: blackLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Container(
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
                                                    fontSize: content14,
                                                    color: blackLight,
                                                    fontWeight: FontWeight.w400),
                                                controller: emailController,
                                                keyboardType: TextInputType.text,
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
                                                      fontSize: content14,
                                                      fontWeight: FontWeight.w400,
                                                      color: grey8),
                                                  hintText: "Enter the email",
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
                                        child: Text(
                                          'User Name',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 20.0,
                                            color: blackLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Container(
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
                                                    fontSize: content14,
                                                    color: blackLight,
                                                    fontWeight: FontWeight.w400),
                                                controller: usernameController,
                                                keyboardType: TextInputType.text,
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
                                                      fontSize: content14,
                                                      fontWeight: FontWeight.w400,
                                                      color: grey8),
                                                  hintText: "Enter the user name",
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
                                        child: Text(
                                          'Phone Number',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 20.0,
                                            color: blackLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Container(
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
                                                    fontSize: content14,
                                                    color: blackLight,
                                                    fontWeight: FontWeight.w400),
                                                controller: phoneController,
                                                keyboardType: TextInputType.text,
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
                                                      fontSize: content14,
                                                      fontWeight: FontWeight.w400,
                                                      color: grey8),
                                                  hintText: "Enter the phone number",
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
                                        child: Text(
                                          'Date of Birth',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 20.0,
                                            color: blackLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () async {
                                            String category = "dob";
                                            DateTime? dt = await datePickerDialog(
                                                context, selectDate, category);
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
                                                      color: grey8,
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
                                        child: Text(
                                          "Role",
                                          style: TextStyle(
                                              fontFamily: "SFProText",
                                              fontSize: 20.0,
                                              color: blackLight,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Container(
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
                                      SizedBox(height: 24),
                                      Container(
                                        child: Text(
                                          'Password',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 20.0,
                                            color: blackLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Container(
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
                                                    fontSize: content14,
                                                    color: blackLight,
                                                    fontWeight: FontWeight.w400),
                                                controller: newController,
                                                keyboardType: TextInputType.text,
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
                                                      fontSize: content14,
                                                      fontWeight: FontWeight.w400,
                                                      color: grey8),
                                                  hintText: "Enter the password",
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
                                        child: Text(
                                          'Confirm Password',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 20.0,
                                            color: blackLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Container(
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
                                                    fontSize: content14,
                                                    color: blackLight,
                                                    fontWeight: FontWeight.w400),
                                                controller: confirmController,
                                                keyboardType: TextInputType.text,
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
                                                      fontSize: content14,
                                                      fontWeight: FontWeight.w400,
                                                      color: grey8),
                                                  hintText: "Confirm the password",
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
                                      SizedBox(height: 40),
                                      Container(
                                        alignment: Alignment.center,
                                        child: GestureDetector(
                                          //action navigate to dashboard screen
                                          onTap: () {
                                            if (newController.text != "" &&
                                                confirmController.text != "") {
                                              if (newFormKey.currentState!.validate() &&
                                                  confirmFormKey.currentState!.validate()) {
                                                if (newController.text ==
                                                      confirmController.text) {
                                                    showSnackBar(
                                                        context,
                                                        'Successfully changed the password!',
                                                        'success');
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            skCreateAccountSuccessfullyScreen(),
                                                      ),
                                                    );
                                                    // .then((value) {});
                                                  } else {
                                                    showSnackBar(
                                                        context,
                                                        "New password isn't confirmed correctly",
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
                                              color: (isCheckout) ? white : blackLight,
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
                                            child: (isCheckout) 
                                            ? Container(
                                              child: Icon(Iconsax.refresh, size: 24, color: blackLight),
                                            )
                                            : Container(
                                              child: Text(
                                                "Checkout",
                                                style: TextStyle(
                                                  color: whiteLight,
                                                  fontFamily: 'SFProText',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: textButton20
                                                ),
                                              )
                                            ),
                                          ),
                                        )
                                      ),
                                      SizedBox(height: 24)
                                    ]
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 62),
                  child: Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(left: 28),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Iconsax.arrow_square_left,
                            size: 32, color: blackLight),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
  
  //Create function
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