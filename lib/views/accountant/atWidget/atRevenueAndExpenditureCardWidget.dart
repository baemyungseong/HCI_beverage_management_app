import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:blur/blur.dart';
import 'package:iconsax/iconsax.dart';

class atRevenueAndExpenditureCardWidget extends StatelessWidget {
  const atRevenueAndExpenditureCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 307,
          height: 128,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
                image: AssetImage(atReexCard),
            fit: BoxFit.fill,
            ),
          // child: Image.asset(atReexCard, scale: 8, fit: BoxFit.cover),
          )
        ),
        Blur(
          blur: 2,
          blurColor: white.withOpacity(0.7),
          child: Container(
            width: 307,
            height: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.transparent
            ),
            // child: Image.asset(atReexCard, scale: 8, fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16,top: 16),
          padding: EdgeInsets.only(top: 16, left: 16, bottom: 8, right: 16),
          width: 307,
          height: 128,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            // border: Border.all(
            //     color: Colors.white.withOpacity(0.1), width: 2.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                white.withOpacity(0.7),
                white.withOpacity(0.3),
              ],
              stops: [
                0.0,
                1.0,
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Total Revenue',
                      style: TextStyle(
                        fontSize: content16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SFProText',
                        color: blackLight
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 24,
                    width: 24,
                    child: Image.asset(logo, scale: 6.25),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Container(
                width: 276,
                child: Text(
                  '\$ 2069.00',
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: TextStyle(
                    fontSize: title32,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SFProText',
                    color: blackLight
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      'Num' + '39',
                      style: TextStyle(
                        fontSize: content12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SFProText',
                        color: grey8,
                        height: 1.4
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          'Update',
                          style: TextStyle(
                            fontSize: content12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: grey8,
                            height: 1.4
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        child: Text(
                          '09/11/21',
                          style: TextStyle(
                            fontSize: content8,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: blackLight,
                            height: 1.4
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
