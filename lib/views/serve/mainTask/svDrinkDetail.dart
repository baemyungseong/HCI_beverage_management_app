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
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:another_xlider/another_xlider.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

class svDrinkDetailScreen extends StatefulWidget {
  svDrinkDetailScreen({Key? key}) : super(key: key);

  @override
  _svDrinkDetailScreenState createState() => _svDrinkDetailScreenState();
}

class _svDrinkDetailScreenState
    extends State<svDrinkDetailScreen> {
  TextEditingController troubleNameController = TextEditingController();

  bool isCheckout = false;

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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8),
                                    Container(
                                      child: Text(
                                        "Drink #2022",
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
                                      width: 319,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: blueLight,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8.0),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Icon(Iconsax.clock, size: 20, color: blueWater),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Text(
                                            'Time: ',
                                            style: TextStyle(
                                              fontFamily: "SFProText",
                                              fontSize: content14,
                                              color: grey8,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            'November 12, at 9:00 AM',
                                            style: TextStyle(
                                              fontFamily: "SFProText",
                                              fontSize: content14,
                                              color: blackLight,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 24),
                                    Container(
                                      child: Text(
                                        "Note",
                                        style: TextStyle(
                                          fontFamily: "SFProText",
                                          fontSize: title20,
                                          color: blackLight,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Customer name: Bui Minh Thinh",
                                              style: TextStyle(
                                                fontFamily: "SFProText",
                                                fontSize: content14,
                                                color: grey8,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ]
                                      ),
                                    ),
                                    SizedBox(height: 24),
                                    Container(
                                      child: Text(
                                        "Details of drink",
                                        style: TextStyle(
                                          fontFamily: "SFProText",
                                          fontSize: title20,
                                          color: blackLight,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Container(
                                      child: ListView.separated(
                                        physics: const NeverScrollableScrollPhysics(),
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        itemCount: 18,
                                        separatorBuilder: (BuildContext context, int index) =>
                                            SizedBox(
                                          height: 1,
                                          child: Divider(color: grey8, thickness: 0.2),
                                        ),
                                        itemBuilder: (context, index) {
                                          return Container(
                                            decoration: (index == 0 || index == 8 - 1)
                                                ?(index == 0)
                                                  ? BoxDecoration(
                                                      color: white,
                                                      borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(8),
                                                        topRight: Radius.circular(8),
                                                      ),
                                                    )
                                                  : BoxDecoration(
                                                      color: white,
                                                      borderRadius: BorderRadius.only(
                                                        bottomLeft: Radius.circular(8),
                                                        bottomRight: Radius.circular(8),
                                                      ),
                                                    )
                                                : BoxDecoration(
                                                    color: white,
                                                  ),
                                            width: 319,
                                            height: 48,
                                            padding: EdgeInsets.only(top: 8, left: 16, bottom: 8, right: 16),
                                            child: Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: blueLight,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(8),
                                                    )
                                                  ),
                                                  height: 30,
                                                  width: 30,
                                                  child: Center(
                                                    child: Text(
                                                      '${index + 1}',
                                                      style: TextStyle(
                                                        fontFamily: "SFProText",
                                                        fontSize: content16,
                                                        color: blackLight,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 16),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                            (index == 0)
                                                                ? 'Broken Glass'
                                                                : 'Broken Plastic Glass',
                                                            style: TextStyle(
                                                              fontFamily: "SFProText",
                                                              fontSize: content12,
                                                              color: blackLight,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.4
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 0),
                                                        Container(
                                                          child: Text(
                                                            (index == 0)
                                                                ? ' - 98'
                                                                : ' - 34',
                                                            style: TextStyle(
                                                              fontFamily: "SFProText",
                                                              fontSize: content12,
                                                              color: blackLight,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.4
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 2),
                                                    Container(
                                                      child: Text(
                                                        (index == 0) ? 'Compensation' : 'Cost',
                                                        style: TextStyle(
                                                          fontFamily: "SFProText",
                                                          fontSize: content8,
                                                          color: grey8,
                                                          fontWeight: FontWeight.w400,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Spacer(),
                                                Text(
                                                  '+\$2.00',
                                                  maxLines: 1,
                                                  softWrap: false,
                                                  overflow: TextOverflow.fade,
                                                  style: TextStyle(
                                                    fontSize: content14,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'SFProText',
                                                    foreground: Paint()
                                                      ..shader = greenGradient,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
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
                                          '+ \$36.00',
                                          maxLines: 1,
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'SFProText',
                                            foreground: Paint()..shader = blueGradient,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 40),
                                    Container(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        //action navigate to dashboard screen
                                        onTap: () {
                                          checkoutDialog(context);
                                          setState(() {
                                            isCheckout = true;
                                            // Navigator.pop(context);
                                          });
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
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 28),
                      child: GestureDetector(
                        onTap: () {
                          removeDialog(context);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => svDrinkCartScreen(),
                          //   ),
                          // );
                          // // .then((value) {});
                          showSnackBar(context, 'The order has been removed!', "success");
                        },
                        child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
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
                            boxShadow: [
                              BoxShadow(
                                  color: black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 64,
                                  offset: Offset(8, 8)),
                              BoxShadow(
                                color: black.withOpacity(0.2),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Container(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center,
                              child: Icon(Iconsax.close_circle,
                                  size: 18,
                                  color: white)),
                        ),
                      )
                    ),
                  ],
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}