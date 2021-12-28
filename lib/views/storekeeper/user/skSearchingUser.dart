import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';

//import others
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

class skUserSearchingScreen extends StatefulWidget {
  final String searchResult;
  const skUserSearchingScreen({Key? key, required this.searchResult})
      : super(key: key);

  @override
  State<skUserSearchingScreen> createState() => _skUserSearchingScreenState();
}

class _skUserSearchingScreenState extends State<skUserSearchingScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    void initState() {
      super.initState();
      searchController.text = widget.searchResult;
    }

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(background), fit: BoxFit.cover),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 128),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: appPadding,
                          right: appPadding,
                          bottom: appPadding + 8),
                      child: Column(
                        children: [
                          Container(
                            child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 16,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      SizedBox(height: 24),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    watchUserDialog(context);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 24,
                                        top: 16,
                                        bottom: 16,
                                        right: 16),
                                    decoration: BoxDecoration(
                                      color: blueLight,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 80,
                                    width: 319,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              AnimatedContainer(
                                                alignment: Alignment.center,
                                                duration:
                                                    Duration(milliseconds: 300),
                                                height: 48,
                                                width: 48,
                                                decoration: BoxDecoration(
                                                  color: blueWater,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          'https://scontent.fvca1-1.fna.fbcdn.net/v/t39.30808-6/244996278_2952087241710403_6324580891206192742_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=QkKoL3I2WxEAX9x_RIV&_nc_ht=scontent.fvca1-1.fna&oh=00_AT-HVBPf8k4Qgo6eEWGidx5PSEN7T9wnIu1_FQRmt9gafg&oe=61CD1F40'),
                                                      fit: BoxFit.cover),
                                                  shape: BoxShape.rectangle,
                                                ),
                                              ),
                                              SizedBox(width: 24),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Y Thinh Lam',
                                                        style: TextStyle(
                                                          fontSize: content16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              'SFProText',
                                                          color: blackLight,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 50,
                                                      ),
                                                      Container(
                                                        height: 18,
                                                        width: 56,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                          color: blueWater,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Accountant',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'SFProText',
                                                              fontSize:
                                                                  content8,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Iconsax.sms,
                                                        color: blackLight,
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        'nhatkb2001@gmail.com',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'SFProText',
                                                          fontSize: content12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: grey8,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ]
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
                Padding(
                  padding: EdgeInsets.all(appPadding),
                  child: Column(children: [
                    SizedBox(height: 34),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 291 - 4,
                            height: 32,
                            child: TextFormField(
                              controller: searchController,
                              //initialValue: widget.searchResult,
                              style: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: content14,
                                  fontWeight: FontWeight.w400,
                                  color: blackLight,
                                  height: 1.4),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Iconsax.search_normal_1,
                                  size: 18,
                                  color: blackLight,
                                ),
                                contentPadding:
                                    EdgeInsets.only(left: 20, right: 0),
                                hintText: "What're you looking for?",
                                hintStyle: TextStyle(
                                    fontFamily: 'SFProText',
                                    fontSize: content14,
                                    fontWeight: FontWeight.w400,
                                    color: grey8,
                                    height: 1.4),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            )),
                        Spacer(),
                        Container(
                            // padding: EdgeInsets.only(right: 28),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                child: Icon(Iconsax.close_square,
                                    size: 24, color: blackLight),
                              ),
                            )),
                      ],
                    ),
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
