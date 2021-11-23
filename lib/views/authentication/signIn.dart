import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import views
import 'package:ui_fresh_app/views/authentication/termCondition.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

class signinScreen extends StatelessWidget {
  const signinScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login - Code i ai gảnh code dùm?",
              style: TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
          //action navigate to signin screen
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => conditionScreen(),
                  ),
                );
              },
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 300),
                height: 50,
                width: 260,
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
                      offset: Offset(15, 15), // changes position of shadow
                    ),
                    BoxShadow(
                      color: black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(8, 8), // changes position of shadow
                    ),
                  ],
                ),
                child: Text(
                  "Go to Terms & Conditions",
                  style: TextStyle(
                      color: whiteLight,
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w600,
                      fontSize: textButton),
                ),
              ),
            )
          ],
        )
        
      )
    );
  }
}