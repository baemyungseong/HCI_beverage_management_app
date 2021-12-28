import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';
import 'package:ui_fresh_app/views/account/accountMessageDetail.dart';

//import views
import 'package:ui_fresh_app/views/authentication/signIn.dart';

//import others
import 'package:iconsax/iconsax.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

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

logoutDialog(BuildContext context) {
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
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                    child: Icon(
                      Iconsax.logout,
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
                      'Do you want to logout \nFresh App?',
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signInScreen(),
                        ),
                      );
                      showSnackBar(context, "Your account is logged out!", 'success');
                    },
                    // onTap: () => signOutUser().then((value) {
                    //   Navigator.of(context).pushAndRemoveUntil(
                    //       MaterialPageRoute(
                    //           builder: (context) =>
                    //               authenticationWrapper()),
                    //       (Route<dynamic> route) => false);
                    // }),
                    child: Container(
                      width: 122,
                      height: 40,
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
                          'Log out',
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
                  ),
                  SizedBox(
                    width: 7,
                  ),
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


//add trouble dialog
int selected = 0;
Widget customRadio(String role, int index, StateSetter setState) {
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
                fontSize: 12.0,
                color: blackLight,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          alignment: Alignment.center,
          duration: Duration(milliseconds: 300),
          height: 36,
          width: 122,
          decoration: BoxDecoration(
            color: (selected == index) ? blueLight : null,
            border: Border(
              top: BorderSide(width: 2, color: blueLight),
              left: BorderSide(width: 2, color: blueLight),
              right: BorderSide(width: 2, color: blueLight),
              bottom: BorderSide(width: 2, color: blueLight),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ));
}

addTroubleDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            backgroundColor: white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)),
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            content: Stack(
              children: <Widget>[
                Form(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 16, bottom: 16, left: 24, right: 24),
                    width: 299,
                    height: 429,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          child: Icon(
                            Iconsax.edit,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Create new trouble',
                          style: TextStyle(
                            fontSize: content20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SFProText',
                            color: blackLight,
                          ),
                        ),
                        SizedBox(height: 18),
                        Text(
                          'Trouble\'\s Name',
                          style: TextStyle(
                            fontSize: content14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: blackLight,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 251,
                          height: 36,
                          child: TextFormField(
                            // initialValue:
                            //     'Tại sao em lại ra đi hả Bùi Khắc Lam',
                            autofocus: false,
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content12,
                                fontWeight: FontWeight.w400,
                                color: blackLight,
                                height: 1.4),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 20, right: 0),
                              hintText: "What're your trouble?",
                              hintStyle: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: content12,
                                  fontWeight: FontWeight.w400,
                                  color: grey8,
                                  height: 1.4),
                              filled: true,
                              fillColor: blueLight,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Category',
                          style: TextStyle(
                            fontSize: content14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: blackLight,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            customRadio('Compensation', 1, setState),
                            SizedBox(
                              width: 7,
                            ),
                            customRadio('Cost', 2, setState),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Money',
                          style: TextStyle(
                            fontSize: content14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: blackLight,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 122,
                          height: 36,
                          child: TextFormField(
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content14,
                                fontWeight: FontWeight.w400,
                                color: blackLight,
                                height: 1.0),
                            decoration: InputDecoration(
                              prefix: Column(
                                children: [
                                  Text(
                                    '\$ ',
                                    style: TextStyle(
                                      fontFamily: 'SFProText',
                                      fontSize: content12,
                                      fontWeight: FontWeight.w400,
                                      color: blackLight,
                                      height: 1.4
                                    ),
                                  ),
                                  SizedBox(height: 0.3)
                                ],
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 16, right: 0),
                              hintStyle: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: content12,
                                  fontWeight: FontWeight.w400,
                                  color: grey8,
                                  height: 1.6),
                              filled: true,
                              fillColor: blueLight,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox( height: 32),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                showSnackBar(context, 'The trouble have been created!', 'success');
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                width: 122,
                                height: 40,
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
                                    'Create',
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
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
      });
}

addGoodDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            backgroundColor: white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)),
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            content: Stack(
              children: <Widget>[
                Form(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 16, bottom: 16, left: 24, right: 24),
                    width: 299,
                    height: 514,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          child: Icon(
                            Iconsax.edit,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Create new goods',
                          style: TextStyle(
                            fontSize: content20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SFProText',
                            color: blackLight,
                          ),
                        ),
                        SizedBox(height: 18),
                        Text(
                          'Goods\'\s Name',
                          style: TextStyle(
                            fontSize: content14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: blackLight,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 251,
                          height: 36,
                          child: TextFormField(
                            // initialValue:
                            //     'Tại sao em lại ra đi hả Bùi Khắc Lam',
                            autofocus: false,
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content12,
                                fontWeight: FontWeight.w400,
                                color: blackLight,
                                height: 1.4),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 20, right: 0),
                              hintText: "What're your trouble?",
                              hintStyle: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: content12,
                                  fontWeight: FontWeight.w400,
                                  color: grey8,
                                  height: 1.4),
                              filled: true,
                              fillColor: blueLight,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Goods\'\s Name',
                          style: TextStyle(
                            fontSize: content14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: blackLight,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 251,
                          height: 36,
                          child: TextFormField(
                            // initialValue:
                            //     'Tại sao em lại ra đi hả Bùi Khắc Lam',
                            autofocus: false,
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content12,
                                fontWeight: FontWeight.w400,
                                color: blackLight,
                                height: 1.4),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 20, right: 0),
                              hintText: "What're your trouble?",
                              hintStyle: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: content12,
                                  fontWeight: FontWeight.w400,
                                  color: grey8,
                                  height: 1.4),
                              filled: true,
                              fillColor: blueLight,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Goods\'\s Name',
                          style: TextStyle(
                            fontSize: content14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: blackLight,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 251,
                          height: 36,
                          child: TextFormField(
                            // initialValue:
                            //     'Tại sao em lại ra đi hả Bùi Khắc Lam',
                            autofocus: false,
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content12,
                                fontWeight: FontWeight.w400,
                                color: blackLight,
                                height: 1.4),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 20, right: 0),
                              hintText: "What're your trouble?",
                              hintStyle: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: content12,
                                  fontWeight: FontWeight.w400,
                                  color: grey8,
                                  height: 1.4),
                              filled: true,
                              fillColor: blueLight,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Unit price',
                          style: TextStyle(
                            fontSize: content14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: blackLight,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 122,
                          height: 36,
                          child: TextFormField(
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content14,
                                fontWeight: FontWeight.w400,
                                color: blackLight,
                                height: 1.0),
                            decoration: InputDecoration(
                              prefix: Column(
                                children: [
                                  Text(
                                    '\$ ',
                                    style: TextStyle(
                                        fontFamily: 'SFProText',
                                        fontSize: content12,
                                        fontWeight: FontWeight.w400,
                                        color: blackLight,
                                        height: 1.4),
                                  ),
                                  SizedBox(height: 0.3)
                                ],
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 16, right: 0),
                              hintStyle: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: content12,
                                  fontWeight: FontWeight.w400,
                                  color: grey8,
                                  height: 1.6),
                              filled: true,
                              fillColor: blueLight,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                width: 122,
                                height: 40,
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
                                    'Create',
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
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
      });
}

watchUserDialog(BuildContext context) {
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
          height: 192,
          width: 303,
          padding: EdgeInsets.only(top: 18, bottom: 18, left: 24, right: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 8),
                      AnimatedContainer(
                        alignment: Alignment.center,
                        duration: Duration(milliseconds: 300),
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          color: blueWater,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://scontent.fvca1-1.fna.fbcdn.net/v/t39.30808-6/244996278_2952087241710403_6324580891206192742_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=QkKoL3I2WxEAX9x_RIV&_nc_ht=scontent.fvca1-1.fna&oh=00_AT-HVBPf8k4Qgo6eEWGidx5PSEN7T9wnIu1_FQRmt9gafg&oe=61CD1F40'),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pan cái chảo',
                        style: TextStyle(
                          fontSize: content18,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'SFProText',
                          color: blackLight,
                          decoration: TextDecoration.none,
                          height: 1.4
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 0.5,
                        width: 150.0,
                        color: blackLight,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'nhatkb2021@gmail.com',
                        style: TextStyle(
                          fontSize: content10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SFProText',
                          color: grey8,
                          decoration: TextDecoration.none,
                          height: 1.4
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '84+ 902311293',
                        style: TextStyle(
                          fontSize: content10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SFProText',
                          color: grey8,
                          decoration: TextDecoration.none,
                          height: 1.4
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '@26/03/2001',
                        style: TextStyle(
                          fontSize: content10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SFProText',
                          color: grey8,
                          decoration: TextDecoration.none,
                          height: 1.4
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => messageDetailScreen(),
                        ),
                      );
                      // .then((value) {});
                    },
                    child: Container(
                      height: 40,
                      width: 122,
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
                          'Message',
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
                  ),
                  SizedBox(
                    width: 11,
                  ),
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
                ],
              ),
            ],
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
                      'Do you want to remove \nthis Incident Report?',
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                      ..pop()
                      ..pop();
                    },
                    child: Container(
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
                  ),
                  SizedBox(
                    width: 7,
                  ),
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

checkoutDialog(BuildContext context) {
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
                            Color(0xFF159957),
                            Color(0xFF159199),
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
                      Iconsax.message_question,
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
                      'Do you want to check out \nthis Drink?',
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      showSnackBar(context, 'The order has been passed!', "success");
                    },
                    child: 
                      Container(
                      width: 122,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF159957),
                              Color(0xFF159199),
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
                          'Confirm',
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
                  ),
                  SizedBox(
                    width: 7,
                  ),
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

searchDialog(
  BuildContext context,
) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            backgroundColor: white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)),
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            content: Stack(
              children: <Widget>[
                Form(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 24, bottom: 24, left: 16, right: 16),
                    width: 299,
                    height: 229,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 240,
                              height: 32,
                              child: TextFormField(
                                style: TextStyle(
                                    fontFamily: 'SFProText',
                                    fontSize: content14,
                                    fontWeight: FontWeight.w400,
                                    color: blackLight,
                                    height: 1.4),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Iconsax.search_normal_1,
                                    size: 18,
                                    color: black,
                                  ),
                                  contentPadding:
                                      EdgeInsets.only(left: 20, right: 0),
                                  hintText: "What're you looking for?",
                                  hintStyle: TextStyle(
                                      fontFamily: 'SFProText',
                                      fontSize: content14,
                                      fontWeight: FontWeight.w400,
                                      color: grey8,
                                      height: 1.4),
                                  filled: true,
                                  fillColor: whiteLight,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.zero,
                                alignment: Alignment.center,
                                child: Icon(Iconsax.close_square,
                                    size: 19, color: blackLight),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          height: 128,
                          padding: EdgeInsets.only(left: 16, right: 140),
                          child: ListView.separated(
                            physics: const AlwaysScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 4,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    SizedBox(height: 16),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          messageDetailScreen(),
                                    ),
                                  );
                                  // .then((value) {});
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 32,
                                  width: 111,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            AnimatedContainer(
                                              alignment: Alignment.center,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              height: 32,
                                              width: 32,
                                              decoration: BoxDecoration(
                                                color: blueWater,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        'https://scontent.fsgn5-10.fna.fbcdn.net/v/t1.6435-9/161084499_1011185239289536_7749468629913909457_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=1Z9ynzc2dg4AX_mL5HN&_nc_ht=scontent.fsgn5-10.fna&oh=00_AT92ecLxLZxUsrqM0zA8jcY7hzLCnJ0x_pE78H7gd730uQ&oe=61EC35B8'),
                                                    fit: BoxFit.cover),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Noob chảo',
                                                  style: TextStyle(
                                                    fontFamily: 'SFProText',
                                                    fontSize: content12,
                                                    fontWeight: FontWeight.w600,
                                                    color: blackLight,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  'Accountant',
                                                  style: TextStyle(
                                                    fontFamily: 'SFProText',
                                                    fontSize: content8,
                                                    fontWeight: FontWeight.w400,
                                                    color: blackLight,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
      });
}
