import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';

//import views
import 'package:ui_fresh_app/views/bartender/incidentReport/btIncidentReportDetail.dart';

//import others
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class btIncidentReportSearchingScreen extends StatefulWidget {
  btIncidentReportSearchingScreen(
      {Key? key, required this.searchResult, required this.haveFilter})
      : super(key: key);
  String searchResult;
  bool haveFilter;

  @override
  _btIncidentReportSearchingScreenState createState() =>
      _btIncidentReportSearchingScreenState();
}

class _btIncidentReportSearchingScreenState
    extends State<btIncidentReportSearchingScreen> {
  TextEditingController searchController = TextEditingController();
  bool? useFilter;

  void initState() {
    super.initState();
    searchController.text = widget.searchResult;
    useFilter = widget.haveFilter;
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent),
      child: Scaffold(
          body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(background), fit: BoxFit.cover),
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 128),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: appPadding,
                      right: appPadding,
                      bottom: appPadding + 8),
                  child: Column(
                    children: [
                      Container(
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          separatorBuilder: (BuildContext context, int index) =>
                              SizedBox(height: 16),
                          itemCount: 8,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        btIncidentReportDetailScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: blueLight,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 80,
                                width: 319,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Text(
                                          'Broken Glass',
                                          style: TextStyle(
                                            fontFamily: 'SFProText',
                                            fontSize: content16,
                                            fontWeight: FontWeight.w600,
                                            color: blackLight,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 10,
                                          height: 10,
                                          decoration: new BoxDecoration(
                                            gradient: (index == 0 || index == 3)
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
                                                      ])
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
                                                      ]),
                                            color: black,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Icon(Iconsax.clock,
                                            size: 18, color: blueWater),
                                        SizedBox(width: 6),
                                        Text(
                                          '02.00 pm, 08 Oct 2021',
                                          style: TextStyle(
                                            fontFamily: 'SFProText',
                                            fontSize: content12,
                                            fontWeight: FontWeight.w500,
                                            color: grey8,
                                          ),
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 48,
                                              decoration: BoxDecoration(
                                                  color: blueWater,
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Center(
                                                child: Text(
                                                  'AT#2024',
                                                  style: TextStyle(
                                                    fontFamily: 'SFProText',
                                                    fontSize: content8,
                                                    fontWeight: FontWeight.w500,
                                                    color: white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 24),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(appPadding),
              child: Column(children: [
                SizedBox(height: 34),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 247,
                        height: 32,
                        child: TextFormField(
                          controller: searchController,
                          // initialValue: widget.searchResult,
                          style: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: content14,
                              fontWeight: FontWeight.w400,
                              color: blackLight,
                              height: 1.4),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.search_normal_1, size: 18),
                            contentPadding: EdgeInsets.only(left: 20, right: 0),
                            hintText: "What're you looking for?",
                            hintStyle: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content14,
                                fontWeight: FontWeight.w400,
                                color: grey8,
                                height: 1.4),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        )),
                    Spacer(),
                    Container(
                        // padding: EdgeInsets.only(right: 28),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            // showNumberPad(context);
                            showFilter(context);
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: (useFilter == true) ? blackLight : white,
                              borderRadius: BorderRadius.circular(8),
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
                                child: Icon(Iconsax.setting_4,
                                    size: 18,
                                    color: (useFilter == true)
                                        ? white
                                        : blackLight)),
                          ),
                        )),
                    SizedBox(width: 8),
                    Container(
                        // padding: EdgeInsets.only(right: 28),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: AnimatedContainer(
                              alignment: Alignment.center,
                              duration: Duration(milliseconds: 300),
                              child: Icon(Iconsax.close_square,
                                  size: 24, color: blackLight)),
                        )),
                  ],
                ),
              ]),
            )
          ],
        )
      ])),
    );
  }

  late DateTime selectDate1 = DateTime.now();
  late DateTime selectDate2 = DateTime.now();

  int selected = 0;
  double _lowerValue = 0;
  double _upperValue = 1000;

  showFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      elevation: 20,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter SetState1) {
          return Container(
            height: 685 - 96 - 104,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  child: Image.asset(indicator),
                ),
                SizedBox(height: 24),
                Container(
                  child: Text(
                    'Refine Result',
                    style: TextStyle(
                      fontSize: title28,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SFProText',
                      color: blackLight,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 28),
                      child: Text(
                        'Category',
                        style: TextStyle(
                          fontSize: title20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SFProText',
                          color: blackLight,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 28),
                      child: SizedBox(
                        width: 150.0,
                        height: 45.0,
                        child: new OutlinedButton(
                          onPressed: () {
                            SetState1(() {
                              selected = 1;
                            });
                          },
                          child: Text(
                            'Done',
                            style: TextStyle(
                              fontSize: content20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProText',
                              foreground: (selected == 1)
                                  ? (Paint()..shader = greenGradient)
                                  : (Paint()..shader = blackLightShader),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                width: 2,
                                color: (selected == 1) ? green : greyC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 28),
                      child: SizedBox(
                        width: 150.0,
                        height: 45.0,
                        child: new OutlinedButton(
                          onPressed: () {
                            SetState1(() {
                              selected = 2;
                            });
                          },
                          child: Text(
                            'Processing',
                            style: TextStyle(
                              fontSize: content20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProText',
                              foreground: (selected == 2)
                                  ? (Paint()..shader = redGradient)
                                  : (Paint()..shader = blackLightShader),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                width: 2, color: (selected == 2) ? red : greyC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 28),
                      child: Text(
                        'Date',
                        style: TextStyle(
                            fontSize: content20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SFProText',
                            color: blackLight),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 28, top: 0),
                      child: Text(
                        'range',
                        style: TextStyle(
                            fontSize: content16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: grey8),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 28),
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () async {
                            String category = "reex";
                            DateTime? dt = await datePickerDialog(
                                context, selectDate1, category);
                            if (dt != null) {
                              selectDate1 = dt;
                              SetState1(() {
                                selectDate1 != selectDate1;
                              });
                            }
                            print(selectDate1);
                          },
                          child: AnimatedContainer(
                              alignment: Alignment.center,
                              duration: Duration(milliseconds: 300),
                              height: 36,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border(
                                    top: BorderSide(width: 1, color: greyC),
                                    left: BorderSide(width: 1, color: greyC),
                                    right: BorderSide(width: 1, color: greyC),
                                    bottom: BorderSide(width: 1, color: greyC),
                                  )),
                              child: Center(
                                child: Text(
                                  // "12 November, 2021",
                                  // dd/MM/yyyy
                                  "${DateFormat('yMd').format(selectDate1)}",
                                  // "${selectDate.day} ${selectDate.month}, ${selectDate.year}",
                                  style: TextStyle(
                                    color: blackLight,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              )),
                        )),
                    Container(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                        child: Icon(Iconsax.arrow_right_1,
                            size: 24, color: blackLight)),
                    Container(
                        padding: EdgeInsets.only(right: 28),
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () async {
                            String category = "reex";
                            DateTime? dt = await datePickerDialog(
                                context, selectDate2, category);
                            if (dt != null) {
                              selectDate2 = dt;
                              SetState1(() {
                                selectDate2 != selectDate2;
                              });
                            }
                            print(selectDate2);
                          },
                          child: AnimatedContainer(
                              alignment: Alignment.center,
                              duration: Duration(milliseconds: 300),
                              height: 36,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border(
                                    top: BorderSide(width: 1, color: greyC),
                                    left: BorderSide(width: 1, color: greyC),
                                    right: BorderSide(width: 1, color: greyC),
                                    bottom: BorderSide(width: 1, color: greyC),
                                  )),
                              child: Center(
                                child: Text(
                                  // "12 November, 2021",
                                  "${DateFormat('yMd').format(selectDate2)}",
                                  // "${selectDate.day} ${selectDate.month}, ${selectDate.year}",
                                  style: TextStyle(
                                    color: blackLight,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              )),
                        )),
                  ],
                ),
                SizedBox(height: 56),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: ElevatedButton(
                          onPressed: () {
                            if (selectDate1.isBefore(selectDate2)) {
                              if (_lowerValue <= _upperValue) {
                                setState(() {
                                  useFilter = true;
                                });
                                Navigator.pop(context);
                              } else {
                                showSnackBar(
                                    context,
                                    'The max value must be greater than the min',
                                    "error");
                              }
                            } else {
                              showSnackBar(
                                  context,
                                  'The max date must be greater than the min',
                                  "error");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(196, 52),
                            primary: Colors.black,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Text(
                            ' Apply',
                            style: TextStyle(
                              fontSize: textButton20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'SFProText',
                              color: white,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: ElevatedButton(
                          onPressed: () {
                            SetState1(() {
                              selected = 0;
                              selectDate1 = DateTime.now();
                              selectDate2 = DateTime.now();
                              _lowerValue = 0;
                              _upperValue = 1000;
                            });
                            setState(() {
                              useFilter = false;
                            });
                            SetState1(() {
                              useFilter = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(112, 52),
                            primary: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Text(
                            ' Reset',
                            style: TextStyle(
                              fontSize: textButton20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'SFProText',
                              color: blackLight,
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          );
        });
      },
    );
  }
}
