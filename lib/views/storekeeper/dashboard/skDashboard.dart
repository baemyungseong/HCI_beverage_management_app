import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ui_fresh_app/views/account/profileManagement.dart';
import 'package:ui_fresh_app/views/account/accountNotifications.dart';
import 'package:ui_fresh_app/views/account/accountMessages.dart';

//import widgets
import 'package:ui_fresh_app/views/storekeeper/skWidget/skRevenueAndExpenditureCardWidget.dart';
import 'package:ui_fresh_app/views/storekeeper/skWidget/skIncomeAndOutcomeDashboardWidget.dart';
import 'package:ui_fresh_app/views/storekeeper/skWidget/skCircleProgressDashboard.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/services.dart';

// import others
import 'package:meta/meta.dart';
import 'package:iconsax/iconsax.dart';

class skDashboardScreen extends StatefulWidget {

  skDashboardScreen({Key? key}) : super(key: key);

  @override
  _skDashboardScreenState createState() => _skDashboardScreenState();
}

class _skDashboardScreenState extends State<skDashboardScreen> with SingleTickerProviderStateMixin {

  _skDashboardScreenState();

  late String task;

  List<Widget> revenueCards = [skRevenueAndExpenditureCardWidget('Day', 2069.0, '09/12/2021'), skRevenueAndExpenditureCardWidget('Week', 9146.0, '09/12/2021'),
  skRevenueAndExpenditureCardWidget('Month', 157976231.0, '09/12/2021'), skRevenueAndExpenditureCardWidget('Year', 72894732.0, '09/12/2021')];

  double _currentPosition = 0;

  late AnimationController _animatedController;
  late Animation<double> _animationRev;
  late Animation<double> _animationExp;

  void initState() {
    super.initState();

    _animatedController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));

    _animationRev = Tween<double>(begin: 0, end: 37).animate(_animatedController)
      ..addListener(() {
        setState(() {});
      });
    _animationExp = Tween<double>(begin: 37, end: 100).animate(_animatedController)
      ..addListener(() {
        setState(() {});
      });
    _animatedController.forward();
  }

  @override
  void dispose() {
    super.dispose();
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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 62),
                Container(
                  padding: EdgeInsets.only(right: 28),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: appPadding),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    profileManagementScreen(),
                              ),
                            ).then((value) {});
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: blueWater,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      // '${projects[index]!["background"]}'),
                                      'https://i.imgur.com/FpZ9xFI.jpg'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
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
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Noob Chảo',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'SFProText',
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2
                                ),
                              )),
                          SizedBox(height: 2),
                          Container(
                              // alignment: Alignment.topLeft,
                              child: Text('Accountant',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SFProText',
                                    color: grey8,
                                    fontWeight: FontWeight.w400,
                                    // height: 1.4
                                  )
                              )
                          ),
                          SizedBox(height: 2)
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => accountNotificationsScreen(),
                                  ),
                                ).then((value) {});
                              },
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: blackLight,
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
                                    child: Icon(Iconsax.notification,
                                        size: 18, color: white)),
                              ),
                            )
                          ),
                          SizedBox(width: 8),
                          Container(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => accountMessagesScreen(),
                                  ),
                                ).then((value) {});
                              },
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: blueWater,
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
                                    child: Icon(Iconsax.message,
                                        size: 18, color: white)),
                              ),
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 28),
                      child: Text(
                        "Dashboard",
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontSize: 24.0,
                          color: black,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: appPadding),
                      alignment: Alignment.center,
                      child: new DotsIndicator(
                          dotsCount: 4,
                          position: _currentPosition,
                          decorator: DotsDecorator(
                            spacing: const EdgeInsets.only(left: 4, right: 4),
                            color: blackLight.withOpacity(0.3),
                            activeColor: blackLight,
                            size: const Size.square(6.0),
                            activeSize: const Size(20.0, 8.0),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          )),
                    ),
                  ], 
                ),
                SizedBox(height: 24),
                Container(
                  height: 180,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: 
                  PageView.builder(
                    controller: PageController(
                        initialPage: 0,
                        keepPage: true,
                        viewportFraction: 1),
                    itemCount: revenueCards.length,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (num) {
                      setState(() {
                        if (num == revenueCards.length) {
                          _currentPosition = 3.0;
                        } else {
                          _currentPosition = num.toDouble();
                        }
                      });
                    }, 
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                          padding: EdgeInsets.only(left: 28, right: 28),
                          child: revenueCards[index]
                          ),
                        ],
                      );
                    }
                  )
                ),
                SizedBox(height: 64),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  child: skIncomeAndOutcomeWidgetDB(),
                ),
                SizedBox(height: 64),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: appPadding, right: appPadding),
                      child: 
                        CustomPaint(
                        foregroundPainter: skCircleProgressDashboard(_animationRev.value, _animationExp.value),
                        child: Container(
                            width: 160,
                            height: 160,
                            child: GestureDetector(
                              child: Center(
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '26',
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontFamily: 'SFProText',
                                          color: blackLight,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Total ' + '\nTransactions',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'SFProText',
                                          color: grey8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ),
                        ),
                    ),
                    Spacer(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(right: 28),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 64,
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          margin:
                                              EdgeInsets.only(right: 8),
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF75CA92),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          )),
                                      Spacer(),
                                      Container(
                                        child: Text(
                                          '37%',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'SFProText',
                                            color: blackLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Revenue',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'SFProText',
                                    color: grey8,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            padding: EdgeInsets.only(right: 28),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 64,
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 8),
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFC13C43),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          )),
                                      Spacer(),
                                      Container(
                                        child: Text(
                                          '63%',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'SFProText',
                                            color: blackLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Expenditure',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'SFProText',
                                    color: grey8,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}