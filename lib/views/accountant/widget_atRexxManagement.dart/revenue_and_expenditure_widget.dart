import 'package:flutter/material.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';

class RevenueAndExpanditureWidget extends StatelessWidget {
  const RevenueAndExpanditureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Row(
              children: [
                Container(
                  color: Colors.transparent,
                  width: 307,
                  height: 128,
                  child: Card(
                    child: Image.asset(
                      'assets/images/accountant/Card.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                width: 307,
                height: 128,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 16,
                          offset: Offset(2, 2))
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.1), width: 2.0),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.7),
                          Colors.white.withOpacity(0.4),
                        ],
                        stops: [
                          0.0,
                          1.0,
                        ])),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 16),
                          child: Text(
                            'Total Revenue',
                            style: TextStyle(
                              fontSize: content16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProText',
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 16, top: 16, bottom: 0),
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child:
                                Image.asset('assets/images/logo/basicLogo.png'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 16),
                      child: Row(
                        children: [
                          Text(
                            '\$ 2069.00',
                            style: TextStyle(
                              fontSize: title32,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProText',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            'Update',
                            style: TextStyle(
                              fontSize: content12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFProText',
                              color: Colors.grey[8888888],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Num39',
                            style: TextStyle(
                              fontSize: content12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFProText',
                              color: Colors.grey[8888888],
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16, top: 2),
                          child: Text(
                            '09/11/21',
                            style: TextStyle(
                              fontSize: content8,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'SFProText',
                              color: blackLight,
                            ),
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
      ],
    );
  }
}
