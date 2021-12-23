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

//import others
import 'package:meta/meta.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class profileDetailScreen extends StatefulWidget {
  const profileDetailScreen({Key? key}) : super(key: key);

  @override
  _profileDetailScreenState createState() => _profileDetailScreenState();
}

class _profileDetailScreenState extends State<profileDetailScreen>
    with InputValidationMixin {

  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> nameFormKey = GlobalKey<FormState>();
  TextEditingController phonenumberController = TextEditingController();
  GlobalKey<FormState> phonenumberFormKey = GlobalKey<FormState>();

  late DateTime selectDate = DateTime.now();

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
              Column(
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
                        'Profile',
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: title24,
                          color: blackLight,
                          fontWeight: FontWeight.w700,
                          height: 1.6,
                        ),
                      ),
                    ],
                  )),
                  SizedBox(height: 32),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      padding: EdgeInsets.only(left: appPadding, right: appPadding),
                      child: Text(
                        "Username",
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
                        key: nameFormKey,
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
                              controller: nameController,
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
                        "Phone Number",
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
                        key: phonenumberFormKey,
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
                              controller: phonenumberController,
                              keyboardType: TextInputType.phone,
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
                                hintText: "Enter your phone number",
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
                        "Date of Birth",
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.only(left: appPadding, right: appPadding),
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () async {
                          String category = "dob";
                          DateTime? dt = await datePickerDialog(context, selectDate, category);
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
                  ]),
                  SizedBox(height: 64),
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      // onTap: () {
                      //   if (currentController.text != "" &&
                      //       newController.text != "" &&
                      //       confirmController.text != "") {
                      //     if (currentFormKey.currentState!.validate() &&
                      //         newFormKey.currentState!.validate() &&
                      //         confirmFormKey.currentState!.validate()) {
                      //       if (currentController.text == "password") {
                      //         if (newController.text == confirmController.text) {
                      //           showSnackBar(
                      //               context,
                      //               'Successfully changed the password!',
                      //               'success');
                      //           Navigator.pop(context);
                      //         } else {
                      //           showSnackBar(
                      //               context,
                      //               "New password isn't confirmed correctly",
                      //               'error');
                      //         }
                      //       } else {
                      //         showSnackBar(
                      //             context,
                      //             'Your current password is not correct!',
                      //             'error');
                      //       }
                      //     } else {
                      //       showSnackBar(context,
                      //           'Your password must be more than 6', 'error');
                      //     }
                      //   } else {
                      //     showSnackBar(context, 'Your password can not be blank!',
                      //         'error');
                      //   }
                      // },
                      onTap: () {
                        showSnackBar(context, 'Successfully changed the profile!', 'success');
                        Navigator.pop(context);
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
}

//Create validation
mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length >= 6;
}
