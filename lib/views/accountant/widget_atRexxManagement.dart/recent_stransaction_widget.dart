import 'package:flutter/material.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';

class RecentStransactionListWidget extends StatelessWidget {
  const RecentStransactionListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 264,
          width: 319,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 0),
            physics: BouncingScrollPhysics(),
            itemCount: 4,
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 24),
            itemBuilder: (context, index) {
              return Container(
                child: SizedBox(
                  height: 49,
                  width: 319,
                  child: Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Row(
                      children: [
                        Image.asset(
                          index == 2
                              ? 'assets/images/accountant/oderavatar.png'
                              : 'assets/images/accountant/drinkavatar.png',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 51,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      index == 2 ? 'Order' : 'Drink',
                                      style: TextStyle(
                                        fontSize: content16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'SFProText',
                                        color: blackLight,
                                      ),
                                    ),
                                    Text(
                                      '#2092',
                                      style: TextStyle(
                                        fontSize: content14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'SFProText',
                                        foreground: Paint()
                                          ..shader = index == 2
                                              ? redGradient
                                              : greenGradient,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '02.00 pm, 08 Oct 2021',
                                    style: TextStyle(
                                      fontSize: content12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'SFProText',
                                      color: grey8,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          '+\$32.00',
                          style: TextStyle(
                            fontSize: content16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SFProText',
                            foreground: Paint()
                              ..shader =
                                  index == 2 ? redGradient : greenGradient,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
