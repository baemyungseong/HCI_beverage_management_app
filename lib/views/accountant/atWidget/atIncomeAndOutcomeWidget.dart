import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:iconsax/iconsax.dart';

class atIncomeAndOutcomeWidget extends StatelessWidget {
  const atIncomeAndOutcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 64,
          width: 152,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
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
                    ]
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Iconsax.arrow_down, size: 24, color: white)
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Income',
                      style: TextStyle(
                        fontSize: content12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SFProText',
                        foreground: Paint()..shader = greenGradient,
                      ),
                    ),
                  ),
                  Container(
                    width: 72,
                    child: Text(
                      '+ \$3090.00',
                      style: TextStyle(
                        fontSize: content12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SFProText',
                        foreground: Paint()..shader = greenGradient,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          height: 64,
          width: 152,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
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
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Iconsax.arrow_up_3, size: 24, color: white)),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Outcome',
                      style: TextStyle(
                        fontSize: content12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SFProText',
                        foreground: Paint()..shader = redGradient,
                      ),
                    ),
                  ),
                  Container(
                    width: 72,
                    child: Text(
                      '- \$2143.00',
                      style: TextStyle(
                        fontSize: content12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SFProText',
                        foreground: Paint()..shader = redGradient,
                      ),
                    ),
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
