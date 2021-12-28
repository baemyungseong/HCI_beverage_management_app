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
import 'package:ui_fresh_app/views/bartender/incidentReport/btIncidentReportEditing.dart';

//import others
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:another_xlider/another_xlider.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

class btIncidentReportDetailScreen extends StatefulWidget {
  btIncidentReportDetailScreen({Key? key}) : super(key: key);

  @override
  _btIncidentReportDetailScreenState createState() =>
      _btIncidentReportDetailScreenState();
}

class _btIncidentReportDetailScreenState
    extends State<btIncidentReportDetailScreen> {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 8),
                                      Container(
                                        child: Text(
                                          "Broken Glass",
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
                                            Icon(Iconsax.clock,
                                                size: 20, color: blueWater),
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
                                          "Status",
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
                                        width: 122,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: blueWater,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8.0),
                                          ),
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
                                        ),
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Done',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: 14.0,
                                            color: white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      // SizedBox(height: 24),
                                      // Container(
                                      //   child: Text(
                                      //     "Person in change",
                                      //     style: TextStyle(
                                      //       fontFamily: "SFProText",
                                      //       fontSize: title20,
                                      //       color: blackLight,
                                      //       fontWeight: FontWeight.w600,
                                      //     ),
                                      //   ),
                                      // ),
                                      // SizedBox(height: 16),
                                      // Container(
                                      //   // height: 465,
                                      //   child: ListView.separated(
                                      //     physics: const NeverScrollableScrollPhysics(),
                                      //     padding: EdgeInsets.zero,
                                      //     scrollDirection: Axis.vertical,
                                      //     shrinkWrap: true,
                                      //     itemCount: 2,
                                      //     separatorBuilder: (BuildContext context, int index) =>
                                      //         SizedBox(height: 12),
                                      //     itemBuilder: (context, index) {
                                      //       return GestureDetector(
                                      //         // onTap: () {
                                      //         //   removeUserDialog(context);
                                      //         // },
                                      //         child: Container(
                                      //           decoration: BoxDecoration(
                                      //             color: blueLight,
                                      //             borderRadius: BorderRadius.circular(8)
                                      //           ),
                                      //           height: 48,
                                      //           width: 319,
                                      //           child: Column(
                                      //             mainAxisAlignment: MainAxisAlignment.center,
                                      //               crossAxisAlignment: CrossAxisAlignment.start,
                                      //               children: [
                                      //                 Row(
                                      //                   crossAxisAlignment: CrossAxisAlignment.center,
                                      //                   mainAxisAlignment: MainAxisAlignment.start,
                                      //                   children: [
                                      //                     SizedBox(width: 16),
                                      //                     AnimatedContainer(
                                      //                       alignment: Alignment.center,
                                      //                       duration: Duration(milliseconds: 300),
                                      //                       height: 32,
                                      //                       width: 32,
                                      //                       decoration: BoxDecoration(
                                      //                         color: blueWater,
                                      //                         borderRadius:
                                      //                             BorderRadius.circular(8),
                                      //                         image: DecorationImage(
                                      //                             image: NetworkImage(
                                      //                                 'https://scontent.fsgn5-10.fna.fbcdn.net/v/t1.6435-9/161084499_1011185239289536_7749468629913909457_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=1Z9ynzc2dg4AX_mL5HN&_nc_ht=scontent.fsgn5-10.fna&oh=00_AT92ecLxLZxUsrqM0zA8jcY7hzLCnJ0x_pE78H7gd730uQ&oe=61EC35B8'),
                                      //                             fit: BoxFit.cover),
                                      //                         shape: BoxShape.rectangle,
                                      //                       ),
                                      //                     ),
                                      //                     SizedBox(width: 16),
                                      //                     Column(
                                      //                       crossAxisAlignment: CrossAxisAlignment.start,
                                      //                       mainAxisAlignment: MainAxisAlignment.center,
                                      //                       children: [
                                      //                         Row(
                                      //                           children: [
                                      //                             Container(
                                      //                               width: 168,
                                      //                               child: Text(
                                      //                                 'Pan Cái Chảo',
                                      //                                 style: TextStyle(
                                      //                                   fontSize: content14,
                                      //                                   fontWeight: FontWeight.w600,
                                      //                                   fontFamily: 'SFProText',
                                      //                                   color: blackLight,
                                      //                                 ),
                                      //                               ),
                                      //                             ),
                                      //                             SizedBox(width: 43 - 24),
                                      //                             Container(
                                      //                               height: 16,
                                      //                               width: 44,
                                      //                               decoration: BoxDecoration(
                                      //                                 borderRadius:
                                      //                                     BorderRadius.circular(
                                      //                                         4.0),
                                      //                                 color: blueWater,
                                      //                               ),
                                      //                               child: Center(
                                      //                                 child: Text(
                                      //                                   'Accountant',
                                      //                                   style: TextStyle(
                                      //                                     fontFamily: 'SFProText',
                                      //                                     fontSize: content6,
                                      //                                     fontWeight:
                                      //                                         FontWeight.w500,
                                      //                                     color: white,
                                      //                                   ),
                                      //                                 ),
                                      //                               ),
                                      //                             ),
                                      //                           ],
                                      //                         ),
                                      //                         SizedBox(height: 4),
                                      //                         Row(
                                      //                           children: [
                                      //                             Icon(
                                      //                               Iconsax.sms,
                                      //                               color: blackLight,
                                      //                               size: 12,
                                      //                             ),
                                      //                             SizedBox(
                                      //                               width: 4,
                                      //                             ),
                                      //                             Text(
                                      //                               'nhatkb2001@gmail.com',
                                      //                               style: TextStyle(
                                      //                                 fontFamily: 'SFProText',
                                      //                                 fontSize: content8,
                                      //                                 fontWeight: FontWeight.w500,
                                      //                                 color: grey8,
                                      //                               ),
                                      //                             ),
                                      //                           ],
                                      //                         ),
                                      //                       ],
                                      //                     ),
                                      //                   ],
                                      //                 ),
                                      //               ]
                                      //             ),
                                      //         ),
                                      //       );
                                      //     },
                                      //   ),
                                      // ),
                                      // Container(
                                      //   child: Column(children: [
                                      //     Container(
                                      //       child: Text(
                                      //         "Nguyen Tri Minh",
                                      //         style: TextStyle(
                                      //           fontFamily: "SFProText",
                                      //           fontSize: content14,
                                      //           color: grey8,
                                      //           fontWeight: FontWeight.w400,
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ]),
                                      // ),
                                      SizedBox(height: 24),
                                      Container(
                                        child: Text(
                                          "Reason",
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
                                        child: Text(
                                          'Create an article to welcome customers to the new branch of the store with an article to welcome customers',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: content14,
                                            color: grey8,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                      // SizedBox(height: 24),
                                      // Container(
                                      //   child: Text(
                                      //     "Note",
                                      //     style: TextStyle(
                                      //       fontFamily: "SFProText",
                                      //       fontSize: title20,
                                      //       color: blackLight,
                                      //       fontWeight: FontWeight.w600,
                                      //     ),
                                      //   ),
                                      // ),
                                      // SizedBox(height: 16),
                                      // Container(
                                      //   child: Text(
                                      //     'Create an article to welcome customers to the new branch of the store with an article to welcome customers',
                                      //     style: TextStyle(
                                      //       fontFamily: "SFProText",
                                      //       fontSize: content14,
                                      //       color: grey8,
                                      //       fontWeight: FontWeight.w400,
                                      //     ),
                                      //     textAlign: TextAlign.justify,
                                      //   ),
                                      // ),
                                      SizedBox(height: 24),
                                      Container(
                                        child: Text(
                                          "Related People",
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
                                        child: Text(
                                          'Create an article to welcome customers to the new branch of the store with an article to welcome customers',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: content14,
                                            color: grey8,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                      SizedBox(height: 24),
                                      Container(
                                        child: Text(
                                          "Details of trouble",
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
                                          physics:
                                              const NeverScrollableScrollPhysics(),
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
                                            return Container(
                                              decoration: (index == 0 ||
                                                      index == 8 - 1)
                                                  ? (index == 0)
                                                      ? BoxDecoration(
                                                          color: white,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    8),
                                                            topRight:
                                                                Radius.circular(
                                                                    8),
                                                          ),
                                                        )
                                                      : BoxDecoration(
                                                          color: white,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8),
                                                          ),
                                                        )
                                                  : BoxDecoration(
                                                      color: white,
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
                                                    decoration: BoxDecoration(
                                                        color: blueLight,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(8),
                                                        )),
                                                    height: 30,
                                                    width: 30,
                                                    child: Center(
                                                      child: Text(
                                                        '${index + 1}',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              "SFProText",
                                                          fontSize: content16,
                                                          color: blackLight,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                                  ? 'Broken Glass'
                                                                  : 'Broken Plastic Glass',
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
                                                                  height: 1.4),
                                                            ),
                                                          ),
                                                          SizedBox(width: 0),
                                                          Container(
                                                            child: Text(
                                                              (index == 0 ||
                                                                      index ==
                                                                          2 ||
                                                                      index ==
                                                                          3 ||
                                                                      index ==
                                                                          5)
                                                                  ? ' - 98'
                                                                  : ' - 34',
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
                                                                  height: 1.4),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 2),
                                                      Container(
                                                        child: Text(
                                                          (index == 0 ||
                                                                  index == 2 ||
                                                                  index == 3 ||
                                                                  index == 5)
                                                              ? 'Compensation'
                                                              : 'Cost',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "SFProText",
                                                            fontSize: content8,
                                                            color: grey8,
                                                            fontWeight:
                                                                FontWeight.w400,
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
                                                        : '-\$29.00',
                                                    maxLines: 1,
                                                    softWrap: false,
                                                    overflow: TextOverflow.fade,
                                                    style: TextStyle(
                                                      fontSize: content14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'SFProText',
                                                      foreground: Paint()
                                                        ..shader = (index ==
                                                                    0 ||
                                                                index == 2 ||
                                                                index == 3 ||
                                                                index == 5)
                                                            ? greenGradient
                                                            : redGradient,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
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
                                    ]),
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
                          showSnackBar(context, 'The incident report has been removed!', "success");
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
                                ]),
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
                                  size: 18, color: white)),
                        ),
                      )),
                      SizedBox(width: 8),
                      Container(
                          padding: EdgeInsets.only(right: 28),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      btIncidentReportEditingScreen(),
                                ),
                              );
                              // .then((value) {});
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
                                      blueWater,
                                      Color(0xFF979DFA),
                                    ],
                                    stops: [
                                      0.0,
                                      1.0,
                                    ]),
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
                                  child: Icon(Iconsax.edit_2,
                                      size: 18, color: white)),
                            ),
                          )),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
