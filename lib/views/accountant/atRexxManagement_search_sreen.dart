import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

class SrearchSreen extends StatefulWidget {
  SrearchSreen({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  _SrearchSreenState createState() => _SrearchSreenState();
}

class _SrearchSreenState extends State<SrearchSreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(appPadding),
            child: Container(
              width: 319,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(background), fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  SizedBox(height: 22),
                  Row(
                    children: [
                      Container(
                        width: 251,
                        height: 32,
                        child: TextFormField(
                          initialValue: widget.title,
                          style: TextStyle(color: blackLight),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.only(left: 21, right: 8),
                            hintStyle: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: content16,
                              fontWeight: FontWeight.w400,
                              color: blackLight.withOpacity(0.5),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/accountant/filter.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/accountant/exsist.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    child: ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 9,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(height: 24),
                      itemBuilder: (context, index) {
                        return SizedBox(
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                      ..shader = index == 2
                                          ? redGradient
                                          : greenGradient,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
