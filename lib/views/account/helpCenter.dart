import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

class helpCenterScreen extends StatelessWidget {
  const helpCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(appPadding),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(background),
                  fit: BoxFit.cover),
            ),
            child: Column(children: [
              SizedBox(height: 82),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Help Center',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: title28,
                      color: blueWater,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.center,
                child: Image.asset(amHelper, scale: 4),
              ),
              SizedBox(height: 40),
              Divider(
                color: grey8,
                thickness: 0.5,
                indent: 28,
                endIndent: 28,
              ),
              SizedBox(height: 24),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'For any questions or problems' +
                              '\n' +
                              'please email us at',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: content18,
                            color: grey8,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(height: 24),
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'HelpFresh@gmail.com',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: content18,
                            color: blueWater,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        duration: Duration(milliseconds: 300),
                        height: 48,
                        width: 200,
                        decoration: BoxDecoration(
                          color: blackLight,
                          borderRadius: BorderRadius.circular(15),
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
                          "Understand!",
                          style: TextStyle(
                            color: white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: textButton20
                          ),
                        ),
                      ),
                    )
              ),
            ]
        )
      )
    );
  }
}
