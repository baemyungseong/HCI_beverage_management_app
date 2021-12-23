import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import views
import 'package:ui_fresh_app/views/account/profileManagement.dart';

class changePasswordSuccessfullyScreen extends StatelessWidget {
  const changePasswordSuccessfullyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundChangePassword), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4766,
                padding: EdgeInsets.all(appPadding),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48), bottomRight: Radius.circular(48))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 33),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(logo, scale: 3.125),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Successful Changing' + '\n' + 'Password!',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: title24,
                        color: blueWater,
                        fontWeight: FontWeight.w700,
                        height: 1.3
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'The account password has been changed' + '\n' + 'successfully. Now continue to enjoy the' + '\n' + 'exciting moments!',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: content16,
                        color: blackLight,
                        fontWeight: FontWeight.w400,
                        height: 1.3
                      ),
                      textAlign: TextAlign.center,
                    ),
                    new Spacer(),
                    Container(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          //action navigate to dashboard screen
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => profileManagementScreen(),
                              ),
                            );
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 48,
                            width: 200,
                            decoration: BoxDecoration(
                              color: blackLight,
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                              boxShadow: [
                                BoxShadow(
                                  color: black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset:
                                      Offset(0, 4), // changes position of shadow
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
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  color: whiteLight,
                                  fontFamily: 'SFProText',
                                  fontWeight: FontWeight.w600,
                                  fontSize: textButton20),
                            ),
                          ),
                        )
                    ),
                    SizedBox(height: 8)
                  ],
                )
              ),
            ],
          )
      ),
    );
  }
}
