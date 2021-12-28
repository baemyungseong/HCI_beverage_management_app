import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';
import 'package:ui_fresh_app/views/bartender/incidentReport/btIncidentReportCreating.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

//import views
import 'package:ui_fresh_app/views/bartender/mainTask/btDashboardChosing.dart';
import 'package:ui_fresh_app/views/bartender/mainTask/btDrinkEditing.dart';

//import others
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:another_xlider/another_xlider.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

class btMainTaskEditingScreen extends StatefulWidget {
  btMainTaskEditingScreen({Key? key}) : super(key: key);

  @override
  _btMainTaskEditingScreenState createState() =>
      _btMainTaskEditingScreenState();
}

class _btMainTaskEditingScreenState
    extends State<btMainTaskEditingScreen> with InputValidationMixin{

  TextEditingController noteController = TextEditingController();
  GlobalKey<FormState> noteFormKey = GlobalKey<FormState>();

  bool isCheckout = false;

  late DateTime selectDate = DateTime.now();

  int selected = 1;

  Widget customRadio(String status, int index) {
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
              status,
              style: TextStyle(
                fontFamily: "SFProText",
                fontSize: 14.0,
                color: (selected == index) ? white : black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          alignment: Alignment.center,
          duration: Duration(milliseconds: 300),
          height: 40,
          width: 122,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 2, color: blueLight),
              left: BorderSide(width: 2, color: blueLight),
              right: BorderSide(width: 2, color: blueLight),
              bottom: BorderSide(width: 2, color: blueLight),
            ),
            borderRadius: BorderRadius.circular(8),
            gradient: (selected == index)
                ? (index == 1) 
                  ? LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                        Color(0xFF159957),
                        Color(0xFF159199),
                      ],
                    stops: [
                        0.0,
                        1.0,
                      ]
                  )
                  : LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                        Color(0xFFCB356B),
                        Color(0xFFBD3F32),
                      ],
                    stops: [
                        0.0,
                        1.0,
                      ]
                  )
                : null,
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
      )
    );
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
                                      SizedBox(height: 24),
                                      Container(
                                        child: Text(
                                          'Note',
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
                                          key: noteFormKey,
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
                                                controller: noteController,
                                                keyboardType: TextInputType.text,
                                                //validator
                                                validator: (password) {
                                                  if (isNoteValid(password.toString())) {
                                                    return null;
                                                  } else {
                                                    return '';
                                                  }
                                                },
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(left: 20, right: 12),
                                                  hintStyle: TextStyle(
                                                      fontFamily: 'SFProText',
                                                      fontSize: content14,
                                                      fontWeight: FontWeight.w400,
                                                      color: grey8),
                                                  hintText: "Create an article to welcome customers to...",
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
                                          'Details of drink',
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
                                        child: Column(
                                          children: [
                                            ListView.separated(
                                              physics: const NeverScrollableScrollPhysics(),
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              shrinkWrap: true,
                                              itemCount: 8,
                                              separatorBuilder:
                                                  (BuildContext context,
                                                          int index) =>
                                                      SizedBox(
                                                height: 1,
                                                child: Divider(
                                                    color: grey8, thickness: 0.2),
                                              ),
                                              itemBuilder: (context, index) {
                                                return Dismissible(
                                                  key: ValueKey(index), 
                                                  background: Container(
                                                    padding: EdgeInsets.only(right: 16),
                                                    alignment: Alignment.centerRight,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        begin: Alignment.centerLeft,
                                                        end: Alignment.centerRight,
                                                        colors: [
                                                          Color(0xFFCB356B),
                                                          Color(0xFFBD3F32),
                                                        ],
                                                        stops: [
                                                          0.0,
                                                          1.0,
                                                        ]
                                                      ),
                                                    ),
                                                    child: Icon(Iconsax.minus, size: 24, color: white)
                                                  ),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              btDrinkEditingScreen(),
                                                        ),
                                                      );
                                                      // .then((value) {});
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(milliseconds: 300),
                                                      decoration: (index == 0)
                                                      ? BoxDecoration(
                                                          color: white,
                                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                                      ) 
                                                      : BoxDecoration(
                                                          color: white,
                                                          borderRadius: BorderRadius.all(Radius.circular(0)),
                                                      ),
                                                      width: 319,
                                                      height: 48,
                                                      padding: EdgeInsets.only(
                                                          top: 8,
                                                          left: 16,
                                                          bottom: 8,
                                                          right: 16),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    color:
                                                                        blueLight,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .all(
                                                                      Radius
                                                                          .circular(
                                                                              8),
                                                                    )),
                                                            height: 30,
                                                            width: 30,
                                                            child: Center(
                                                              child: Text(
                                                                '${index + 1}',
                                                                style: TextStyle(
                                                                  fontFamily:
                                                                      "SFProText",
                                                                  fontSize:
                                                                      content16,
                                                                  color:
                                                                      blackLight,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 16),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    child: Text(
                                                                      (index == 0 ||
                                                                              index ==
                                                                                  2 ||
                                                                              index ==
                                                                                  3 ||
                                                                              index ==
                                                                                  5)
                                                                          ? 'Honey Tea'
                                                                          : 'Apple',
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              "SFProText",
                                                                          fontSize:
                                                                              content12,
                                                                          color:
                                                                              blackLight,
                                                                          fontWeight:
                                                                              FontWeight
                                                                                  .w600,
                                                                          height:
                                                                              1.4),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                      width: 0),
                                                                  Container(
                                                                    child: Text(
                                                                      (index == 0 ||
                                                                              index ==
                                                                                  2 ||
                                                                              index ==
                                                                                  3 ||
                                                                              index ==
                                                                                  5)
                                                                          ? ' - 01'
                                                                          : ' - 03',
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              "SFProText",
                                                                          fontSize:
                                                                              content12,
                                                                          color:
                                                                              blackLight,
                                                                          fontWeight:
                                                                              FontWeight
                                                                                  .w600,
                                                                          height:
                                                                              1.4),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 2),
                                                              Container(
                                                                child: Text(
                                                                  (index == 0 ||
                                                                          index ==
                                                                              2 ||
                                                                          index ==
                                                                              3 ||
                                                                          index ==
                                                                              5)
                                                                      ? 'Juice'
                                                                      : 'Wine',
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        "SFProText",
                                                                    fontSize:
                                                                        content8,
                                                                    color: grey8,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          Spacer(),
                                                          Text(
                                                            (index == 0 ||
                                                                    index == 2 ||
                                                                    index == 3 ||
                                                                    index == 5)
                                                                ? '+\$103.00'
                                                                : '+\$29.00',
                                                            maxLines: 1,
                                                            softWrap: false,
                                                            overflow:
                                                                TextOverflow.fade,
                                                            style: TextStyle(
                                                              fontSize: content14,
                                                              fontWeight:
                                                                  FontWeight.w500,
                                                              fontFamily:
                                                                  'SFProText',
                                                              foreground: Paint()
                                                                ..shader = greenGradient,
                                                            ),
                                                            textAlign:
                                                                TextAlign.right,
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  )
                                                );
                                              },
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        btDashboardChosingScreen(),
                                                  ),
                                                );
                                                // .then((value) {});
                                              },
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 300),
                                                width: 319,
                                                height: 48,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                      colors: [
                                                        Color(0xFF5FAAEF),
                                                        Color(0xFF979DFA),
                                                      ],
                                                      stops: [
                                                        0.0,
                                                        1.0,
                                                      ]),
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(8),
                                                    bottomRight: Radius.circular(8),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(width: 21),
                                                    Container(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        alignment:
                                                            Alignment.center,
                                                        child: Icon(Iconsax.add,
                                                            size: 20,
                                                            color: white)),
                                                    SizedBox(width: 21),
                                                    Text(
                                                      "New Drink",
                                                      style: TextStyle(
                                                        color: white,
                                                        fontFamily: 'SFProText',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: content14,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ),
                                            )
                                          ],
                                        )
                                      ),
                                      SizedBox(height: 24),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Total Money:',
                                            style: TextStyle(
                                              fontFamily: "SFProText",
                                              fontSize: content16,
                                              color: blackLight,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '+ \$2069.00',
                                            maxLines: 1,
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'SFProText',
                                              foreground: Paint()
                                                ..shader = blueGradient,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ],
                                      ),
                                      // SizedBox(height: 40),
                                      // Container(
                                      //   alignment: Alignment.center,
                                      //   child: GestureDetector(
                                      //     //action navigate to dashboard screen
                                      //     onTap: () {
                                      //       setState(() {
                                      //         checkoutDialog(context);
                                      //         isCheckout = true;
                                      //         // Navigator.pop(context);
                                      //       });
                                      //     },
                                      //     child: AnimatedContainer(
                                      //       alignment: Alignment.center,
                                      //       duration: Duration(milliseconds: 300),
                                      //       height: 48,
                                      //       width: 200,
                                      //       decoration: BoxDecoration(
                                      //         color: (isCheckout) ? white : blackLight,
                                      //         borderRadius:
                                      //             BorderRadius.all(Radius.circular(12)),
                                      //         boxShadow: [
                                      //           BoxShadow(
                                      //             color: black.withOpacity(0.25),
                                      //             spreadRadius: 0,
                                      //             blurRadius: 4,
                                      //             offset: Offset(
                                      //                 0, 4), // changes position of shadow
                                      //           ),
                                      //           BoxShadow(
                                      //             color: black.withOpacity(0.1),
                                      //             spreadRadius: 0,
                                      //             blurRadius: 64,
                                      //             offset: Offset(
                                      //                 15, 15), // changes position of shadow
                                      //           ),
                                      //         ],
                                      //       ),
                                      //       child: (isCheckout)
                                      //       ? Container(
                                      //         child: Icon(Iconsax.refresh, size: 24, color: blackLight),
                                      //       )
                                      //       : Container(
                                      //         child: Text(
                                      //           "Checkout",
                                      //           style: TextStyle(
                                      //             color: whiteLight,
                                      //             fontFamily: 'SFProText',
                                      //             fontWeight: FontWeight.w600,
                                      //             fontSize: textButton20
                                      //           ),
                                      //         )
                                      //       ),
                                      //     ),
                                      //   )
                                      // ),
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
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (noteFormKey.currentState!.validate()) {
                            Navigator.pop(context);
                            showSnackBar(
                                context,
                                'The order have been edited!',
                                'success');
                          } else {
                            showSnackBar(context,
                                'Please complete all information!', 'danger');
                          }
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          margin: EdgeInsets.only(right: 28),
                          width: 80,
                          height: 32,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  blueWater,
                                  Color(0xFF979DFA),
                                ],
                                stops: [
                                  0.0,
                                  1.0,
                                ]),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Center(
                            child: Text(
                              'Save',
                              style: TextStyle(
                                fontFamily: "SFProText",
                                fontSize: 14.0,
                                color: white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

//Create validation
mixin InputValidationMixin {
  // bool isEmailValid(String email) {
  //   RegExp regex = new RegExp(
  //       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  //   return regex.hasMatch(email);
  // }

  bool isNoteValid(String name) => name.length >= 1;

  // bool isPasswordValid(String password) => password.length >= 6;

  // bool isPhoneNumberValid(String phoneNumber) {
  //   RegExp regex = new RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
  //   return regex.hasMatch(phoneNumber);
  // }
}
