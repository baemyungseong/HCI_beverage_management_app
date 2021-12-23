import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';
import 'package:ui_fresh_app/views/storekeeper/skIncidentReportEditing.dart';
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';

class skIncidentReportDetailScreen extends StatefulWidget {
  skIncidentReportDetailScreen({Key? key}) : super(key: key);

  @override
  _skIncidentReportDetailScreenState createState() =>
      _skIncidentReportDetailScreenState();
}

class _skIncidentReportDetailScreenState
    extends State<skIncidentReportDetailScreen> {
  TextEditingController troubleNameController = TextEditingController();
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
            child: Container(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 62),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Iconsax.arrow_square_left,
                            size: 32, color: blackLight),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          removeDialog(context);
                        },
                        child: Container(
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
                              Radius.circular(5.0),
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
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => skIncidentReportEditing(),
                            ),
                          ),
                        },
                        child: Container(
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
                              Radius.circular(5.0),
                            ),
                          ),
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          child: Icon(
                            Iconsax.edit_2,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    child: Text(
                      "Broken Glass",
                      style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: title24,
                        color: black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    color: blueLight,
                    width: 319,
                    height: 48,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Icon(Iconsax.clock),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Time: ',
                          style: TextStyle(
                            fontFamily: "SFProText",
                            fontSize: 14.0,
                            color: grey3,
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
                            fontSize: 14.0,
                            color: black,
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
                        fontSize: title24,
                        color: black,
                        fontWeight: FontWeight.w700,
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
                  SizedBox(height: 24),
                  Container(
                    child: Text(
                      "Reason",
                      style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: title24,
                        color: black,
                        fontWeight: FontWeight.w700,
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
                        color: black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    child: Text(
                      "The party in trouble",
                      style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: title24,
                        color: black,
                        fontWeight: FontWeight.w700,
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
                        color: black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    child: Text(
                      "Details of trouble",
                      style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: title24,
                        color: black,
                        fontWeight: FontWeight.w700,
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
                      itemCount: 2,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: 1,
                        child: Divider(color: grey8),
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: (index == 0 || index == 2 - 1)
                              ? (index == 0)
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
                                    )),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    (index == 0) ? 'Compensation' : 'Cost',
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
                                width: 16,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
