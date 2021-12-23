import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';
import 'package:ui_fresh_app/views/storekeeper/skIncidentReport.dart';
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';

class skIncidentReportCreating extends StatefulWidget {
  const skIncidentReportCreating({Key? key}) : super(key: key);

  @override
  State<skIncidentReportCreating> createState() =>
      _skIncidentReportCreatingState();
}

class _skIncidentReportCreatingState extends State<skIncidentReportCreating> {
  late DateTime selectDate = DateTime.now();
  int selected = 0;
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
            height: 40,
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
              gradient: (selected == index)
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
        ));
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(background), fit: BoxFit.cover),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 62),
                    Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.only(left: appPadding),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Iconsax.arrow_square_left,
                              size: 32, color: blackLight),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    storekeeperIncidentReportScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 80,
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
                                Radius.circular(5.0),
                              ),
                            ),
                            padding: EdgeInsets.zero,
                            alignment: Alignment.center,
                            child: Center(
                              child: Text(
                                'Create',
                                style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontSize: 14.0,
                                  color: blackLight,
                                  fontWeight: FontWeight.w600,
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
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Name',
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: blackLight,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      width: 319,
                      height: 48,
                      child: TextFormField(
                        initialValue: 'Broken Glass',
                        autofocus: false,
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: content14,
                          fontWeight: FontWeight.w400,
                          color: blackLight,
                        ),
                        decoration: InputDecoration(
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
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Datetime',
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: blackLight,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: appPadding, right: appPadding),
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
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Status',
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: blackLight,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: appPadding, right: appPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12),
                          Column(
                            children: [
                              Row(
                                children: [
                                  customRadio('Done', 1),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  customRadio('Processing', 2),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Reasons',
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: blackLight,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      width: 319,
                      height: 48,
                      child: TextFormField(
                        initialValue: 'Create an article to welcome ...',
                        autofocus: false,
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: content14,
                          fontWeight: FontWeight.w400,
                          color: blackLight,
                        ),
                        decoration: InputDecoration(
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
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'The party in trouble',
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: blackLight,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      width: 319,
                      height: 48,
                      child: TextFormField(
                        initialValue: 'Create an article to welcome ...',
                        autofocus: false,
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: content14,
                          fontWeight: FontWeight.w400,
                          color: blackLight,
                        ),
                        decoration: InputDecoration(
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
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Details of trouble',
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 20.0,
                          color: blackLight,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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
                          width: 319,
                          child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 2,
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                              height: 1,
                              child: Divider(color: grey8),
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                height: 48,
                                decoration: (index == 0)
                                    ? BoxDecoration(
                                        color: white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                        ),
                                      )
                                    : BoxDecoration(
                                        color: white,
                                      ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: blueLight,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                      height: 34,
                                      width: 34,
                                      child: Center(
                                        child: Text(
                                          '${index + 1}',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: content16,
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          (index == 0)
                                              ? 'Broken Glass'
                                              : 'Broken Plastic Glass',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: content12,
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          (index == 0)
                                              ? 'Compensation'
                                              : 'Cost',
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontSize: content8,
                                            color: grey3,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      (index == 0) ? '+\$103.00' : '-\$29.00',
                                      maxLines: 1,
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        fontSize: content14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'SFProText',
                                        foreground: Paint()
                                          ..shader = (index == 1)
                                              ? redGradient
                                              : greenGradient,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Container(
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
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24, right: 24),
                      child: Row(
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
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
