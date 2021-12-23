import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import views
import 'package:ui_fresh_app/views/authentication/signIn.dart';

//import others
import 'package:iconsax/iconsax.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

logoutDialog(BuildContext mContext) {
  return showDialog(
      context: mContext,
      builder: (context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            backgroundColor: white,
            content: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 264,
                  width: 240,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
                    child: Column(
                      children: [
                        Text(
                          "Do you want to log out" + '\n' + "Fresh App?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: blueWater,
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              height: 1.6),
                        ),
                        SizedBox(height: 24),
                        Container(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => signInScreen(),
                                  ),
                                );
                              },
                              // onTap: () => signOutUser().then((value) {
                              //   Navigator.of(context).pushAndRemoveUntil(
                              //       MaterialPageRoute(
                              //           builder: (context) =>
                              //               authenticationWrapper()),
                              //       (Route<dynamic> route) => false);
                              // }),
                              child: AnimatedContainer(
                                  alignment: Alignment.center,
                                  duration: Duration(milliseconds: 300),
                                  height: 54,
                                  width: 260,
                                  decoration: BoxDecoration(
                                    color: blackLight,
                                    borderRadius: BorderRadius.circular(8),
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
                                    "Log out",
                                    style: TextStyle(
                                        color: white,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )),
                            )),
                        SizedBox(height: 16),
                        Container(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: AnimatedContainer(
                                  alignment: Alignment.center,
                                  duration: Duration(milliseconds: 300),
                                  height: 54,
                                  width: 260,
                                  decoration: BoxDecoration(
                                    color: white,
                                    border: Border(
                                      top: BorderSide(width: 3, color: white),
                                      left: BorderSide(width: 3, color: white),
                                      right: BorderSide(width: 3, color: white),
                                      bottom:
                                          BorderSide(width: 3, color: white),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: black.withOpacity(0.10),
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
                                        color: blueWater,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )),
                            ))
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: -64,
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: blueWater,
                        radius: 40,
                        child: Icon(
                          Iconsax.logout,
                          color: white,
                          size: 32,
                        ),
                      ),
                    )),
              ],
            ));
      });
}

datePickerDialog(BuildContext context, selectDate, category) {
  return showRoundedDatePicker(
      // customWeekDays: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
      height: 320,
      context: context,
      fontFamily: "SFProText",
      theme: ThemeData(primarySwatch: Colors.blue),
      // listDateDisabled: [
      //   DateTime.now().add(Duration(days: 1)),
      //   DateTime.now().add(Duration(days: 4)),
      //   DateTime.now().add(Duration(days: 6)),
      //   DateTime.now().add(Duration(days: 8)),
      //   DateTime.now().add(Duration(days: 10)),
      // ],
      initialDate: selectDate,
      // initialDate: DateTime(2022, 12, 17),
      firstDate: DateTime(1900),
      lastDate: (category == "reex" || category == "dob") ? DateTime.now() : DateTime(2050),
      // onTapActionButton:() {
      //   if()
      // },

      styleDatePicker: MaterialRoundedDatePickerStyle(
        //Section 1
        paddingDateYearHeader: EdgeInsets.all(8),
        backgroundHeader: blueWater,
        textStyleDayButton: TextStyle(
            fontFamily: "SFProText",
            fontSize: 16,
            color: white,
            fontWeight: FontWeight.w500,
            height: 1.0),
        textStyleYearButton: TextStyle(
          fontFamily: "SFProText",
          fontSize: 24,
          color: white,
          fontWeight: FontWeight.w500,
        ),

        //Section 2
        textStyleMonthYearHeader: TextStyle(
          fontFamily: "SFProText",
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w600,
        ),
        backgroundHeaderMonth: Colors.blue[600],
        paddingMonthHeader: EdgeInsets.only(top: 12, bottom: 12),
        sizeArrow: 24,
        colorArrowNext: white,
        colorArrowPrevious: white,
        // marginLeftArrowPrevious: 8,
        // marginTopArrowPrevious: 0,
        // marginTopArrowNext: 0,
        // marginRightArrowNext: 8,

        //Section 3
        paddingDatePicker: EdgeInsets.all(0),
        backgroundPicker: Colors.blue[200],
        textStyleDayHeader: TextStyle(
          fontFamily: "SFProText",
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w600,
        ),
        textStyleDayOnCalendar: TextStyle(
          fontFamily: "SFProText",
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w400,
        ),
        textStyleDayOnCalendarSelected: TextStyle(
          fontFamily: "SFProText",
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w600,
        ),

        decorationDateSelected: BoxDecoration(
          color: blueWater,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.10),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),

        textStyleDayOnCalendarDisabled:
            TextStyle(fontSize: 20, color: white.withOpacity(0.1)),

        textStyleCurrentDayOnCalendar: TextStyle(
          fontFamily: "SFProText",
          fontSize: 20,
          color: blueWater,
          fontWeight: FontWeight.w700,
        ),

        //Section 4
        paddingActionBar: EdgeInsets.all(0),
        backgroundActionBar: Colors.blue[300],
        textStyleButtonAction: TextStyle(
          fontFamily: "SFProText",
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w600,
        ),
        textStyleButtonPositive: TextStyle(
          fontFamily: "SFProText",
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w600,
        ),
        textStyleButtonNegative: TextStyle(
          fontFamily: "SFProText",
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w600,
        ),
      ),
      styleYearPicker: MaterialRoundedYearPickerStyle(
        textStyleYear: TextStyle(
            fontFamily: "SFProText",
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w400),
        textStyleYearSelected: TextStyle(
            fontFamily: "SFProText",
            fontSize: 48,
            color: Colors.white,
            fontWeight: FontWeight.w600),
        heightYearRow: 80,
        backgroundPicker: Colors.blue[200],
      ));
}

// dialog(BuildContext Context) {
//   return showDialog(
//       context: Context,
//       builder: (context) {
//         return SimpleDialog(
//           title: Text("Favour Options",
//               style: TextStyle(
//                   color: Color(0xFF05268D), fontFamily: "MontserratBold")),
//           children: <Widget>[
//             SimpleDialogOption(
//               child: Text("Delete",
//                   style: TextStyle(
//                       color: Color(0xFF05268D),
//                       fontFamily: "MontserratRegular")),
//               // onPressed: () {
//               //   Navigator.pop(context);
//               //   removeUserPost();
//               // },
//             ),
//             SimpleDialogOption(
//               child: Text("Cancel",
//                   style: TextStyle(
//                       color: Color(0xFF05268D),
//                       fontFamily: "MontserratRegular")),
//               // onPressed: () => Navigator.pop(context)
//             ),
//           ],
//         );
//       }
//   );
// }
