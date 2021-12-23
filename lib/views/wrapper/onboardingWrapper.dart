import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import views
import 'package:ui_fresh_app/views/onboardings/onboardingScreen1.dart';
import 'package:ui_fresh_app/views/onboardings/onboardingScreen2.dart';
import 'package:ui_fresh_app/views/onboardings/onboardingScreen3.dart';
import 'package:ui_fresh_app/views/onboardings/onboardingScreen4.dart';
import 'package:ui_fresh_app/views/authentication/signIn.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:flutter_svg/flutter_svg.dart';

class onboardingWrapper extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<onboardingWrapper> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    onboardingScreen1(),
    onboardingScreen2(),
    onboardingScreen3(),
    onboardingScreen4()
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 28, right: 28, bottom: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //button skip
                      Container(
                        alignment: Alignment.center,
                        child: (_currentPage != _pages.length - 1)
                            ? GestureDetector(
                                onTap: () {
                                  _controller.animateToPage(_pages.length - 1,
                                      duration: Duration(milliseconds: 400),
                                      curve: Curves.linear);
                                },
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                      color: blackLight,
                                      fontFamily: 'SFProText',
                                      fontWeight: FontWeight.w600,
                                      fontSize: textButton18),
                                ),
                              )
                            : Container(
                                child: Text(""),
                              ),
                      ),
                      SizedBox(
                          width: (_currentPage == _pages.length - 1) ? 20 : 28),

                      //dot
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                              List<Widget>.generate(_pages.length, (int index) {
                            return AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                height: (index == _currentPage) ? 10 : 6,
                                width: (index == _currentPage) ? 10 : 6,
                                margin: EdgeInsets.symmetric(horizontal: 4),
                                decoration: (index == _currentPage)
                                    ? BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: blackLight,
                                        boxShadow: [
                                            BoxShadow(
                                              color: white.withOpacity(0.1),
                                              spreadRadius: 0,
                                              blurRadius: 10,
                                              offset: Offset(1,
                                                  1), // changes position of shadow
                                            ),
                                            BoxShadow(
                                              color: white.withOpacity(0.3),
                                              blurRadius: 5,
                                              offset: Offset(3,
                                                  3), // changes position of shadow
                                            ),
                                          ])
                                    : BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: blackLight.withOpacity(0.3),
                                      )
                            );
                          }
                          )
                      ),
                      new Spacer(),

                      //button navigation
                      Container(
                          alignment: Alignment.centerRight,
                          child: (_currentPage == (_pages.length - 1))
                              ? GestureDetector(
                                  //action navigate to signin screen
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
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: blackLight,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: black.withOpacity(0.1),
                                          spreadRadius: 0,
                                          blurRadius: 64,
                                          offset: Offset(15,
                                              15), // changes position of shadow
                                        ),
                                        BoxShadow(
                                          color: black.withOpacity(0.2),
                                          spreadRadius: 0,
                                          blurRadius: 20,
                                          offset: Offset(8,
                                              8), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "Close",
                                      style: TextStyle(
                                          color: whiteLight,
                                          fontFamily: 'SFProText',
                                          fontWeight: FontWeight.w600,
                                          fontSize: textButton18),
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  //action navigate to next onboarding screen
                                  onTap: () {
                                    _controller.nextPage(
                                        duration: Duration(milliseconds: 800),
                                        curve: Curves.easeInOutQuint);
                                  },
                                  child: AnimatedContainer(
                                      alignment: Alignment.center,
                                      duration: Duration(milliseconds: 300),
                                      height: 50,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: blackLight,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: black.withOpacity(0.1),
                                            spreadRadius: 0,
                                            blurRadius: 64,
                                            offset: Offset(15,
                                                15), // changes position of shadow
                                          ),
                                          BoxShadow(
                                            color: black.withOpacity(0.2),
                                            spreadRadius: 0,
                                            blurRadius: 20,
                                            offset: Offset(8,
                                                8), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Text(
                                        "Next",
                                        style: TextStyle(
                                            color: whiteLight,
                                            fontFamily: 'SFProText',
                                            fontWeight: FontWeight.w600,
                                            fontSize: textButton18),
                                      )
                                  ),
                                )
                      ),
                    ],
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
