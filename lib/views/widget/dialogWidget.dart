import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';

//import views
import 'package:ui_fresh_app/views/authentication/signIn.dart';

logoutDialog(BuildContext mContext) {
  return showDialog(
      context: mContext,
      builder: (context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            backgroundColor: Color(0xff607dd9),
            content: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                    child: Column(
                      children: [
                        Text(
                          "Do you want to sign out Favoury?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'MontserratBold',
                              fontSize: 23),
                        ),
                        SizedBox(height: 30),
                        Container(
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
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
                                height: 45,
                                width: 260,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)),
                                child: Text(
                                  "Sign Out",
                                  style: TextStyle(
                                      color: Color(0xff607dd9),
                                      fontFamily: 'MontserratBold',
                                      fontSize: 15),
                                )),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 45,
                                width: 260,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Color(0xff607dd9),
                                      fontFamily: 'MontserratBold',
                                      fontSize: 15),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: -40,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 40,
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 50,
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
      lastDate: (category == "reex" || category == "dob")
          ? DateTime.now()
          : DateTime(2050),
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

removeDialog(BuildContext context) {
  return showGeneralDialog(
    barrierLabel: "Label",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 400),
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          height: 194,
          width: 299,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 32,
                    height: 32,
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
                          ]),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                    child: Icon(
                      Iconsax.close_circle,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    child: Text(
                      'Do you want to remove \nthis incident Report?',
                      style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: 20,
                        color: blackLight,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 122,
                    height: 40,
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
                          ]),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Remove',
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 16,
                          color: white,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 122,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontFamily: "SFProText",
                            fontSize: 16,
                            color: blackLight,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
        child: child,
      );
    },
  );
}
