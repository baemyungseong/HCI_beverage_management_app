import 'package:flutter/material.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';

class IcomeAndOutcomeWidget extends StatelessWidget {
  const IcomeAndOutcomeWidget({Key? key}) : super(key: key);

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
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 2),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/images/accountant/IncomeSignal.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 47),
                    child: Text(
                      'Icome',
                      style: TextStyle(
                        fontSize: content12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SFProText',
                        foreground: Paint()..shader = greenGradient,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
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
        SizedBox(
          width: 15,
        ),
        Container(
          height: 64,
          width: 152,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 2),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/images/accountant/OutcomeSignal.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 47),
                    child: Text(
                      'Icome',
                      style: TextStyle(
                        fontSize: content12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SFProText',
                        foreground: Paint()..shader = redGradient,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Text(
                      '+ \$3090.00',
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
