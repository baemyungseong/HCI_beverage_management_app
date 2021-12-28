import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';
import 'package:ui_fresh_app/views/account/profileManagement.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';

//import views
import 'package:ui_fresh_app/views/storekeeper/user/skSearchingUser.dart';
import 'package:ui_fresh_app/views/storekeeper/user/skCreateNewAccount.dart';

//import others
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

class skUserManagementScreen extends StatefulWidget {
  const skUserManagementScreen({Key? key}) : super(key: key);

  @override
  State<skUserManagementScreen> createState() => _skUserManagementScreenState();
}

class _skUserManagementScreenState extends State<skUserManagementScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
            Container(
              padding: EdgeInsets.only(
                  left: appPadding, top: appPadding, right: appPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => profileManagementScreen(),
                              ),
                            );
                            // .then((value) {});
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: blueWater,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://scontent.fsgn5-8.fna.fbcdn.net/v/t1.6435-9/50903697_2672799252747189_6623025456616570880_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=0debeb&_nc_ohc=TK2F5ekRXQ8AX8U_UKh&_nc_ht=scontent.fsgn5-8.fna&oh=00_AT9TXhfcm2xYO8PPao04FguuU-QFMshrwKndfcBZ9SjnAg&oe=61E61521'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
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
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Noob chảo',
                            style: TextStyle(
                              fontSize: content16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'SFProText',
                              color: blackLight,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Accountant',
                                style: TextStyle(
                                  fontSize: content10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SFProText',
                                  color: blackLight,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        // padding: EdgeInsets.only(right: 28),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    skNewAccountCreatingScreen(),
                              ),
                            );
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: blueWater,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 64,
                                    offset: Offset(8, 8)),
                                BoxShadow(
                                  color: black.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center,
                              child: Icon(Iconsax.add, size: 18, color: white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 280,
                        height: 40,
                        child: TextFormField(
                          controller: searchController,
                          autofocus: false,
                          onEditingComplete: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => skUserSearchingScreen(
                                searchResult: searchController.text,
                              ),
                            ),
                          ),
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
                              color: black,
                            ),
                            contentPadding: EdgeInsets.only(left: 20, right: 0),
                            hintText: "What're you looking for?",
                            hintStyle: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content14,
                                fontWeight: FontWeight.w400,
                                color: grey8,
                                height: 1.4),
                            filled: true,
                            fillColor: blueLight,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'User Management',
                    style: TextStyle(
                      fontSize: title24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SFProText',
                      color: blackLight,
                    ),
                  ),
                  SizedBox(height: 32),
                  Column(
                    children: [
                      Container(
                        height: 552,
                        width: 319,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: 16,
                                separatorBuilder: (BuildContext context, int index) =>
                                    SizedBox(height: 24),
                                itemBuilder: (context, index) {
                                  return Dismissible(
                                    key: ValueKey(index),
                                    background: Container(
                                      padding: EdgeInsets.only(right: 32),
                                      alignment: Alignment.centerRight,
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
                                      ),
                                      child: Icon(Iconsax.minus, size: 24, color: white)),
                                    child: GestureDetector(
                                      onTap: () {
                                        watchUserDialog(context);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(left: 24, top: 16, bottom: 16, right: 16),
                                        decoration: BoxDecoration(
                                          color: blueLight,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        height: 80,
                                        width: 319,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  AnimatedContainer(
                                                    alignment: Alignment.center,
                                                    duration: Duration(milliseconds: 300),
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
                                                              fontWeight: FontWeight.w600,
                                                              fontFamily: 'SFProText',
                                                              color: blackLight,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 50,
                                                          ),
                                                          Container(
                                                            height: 18,
                                                            width: 56,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      4.0),
                                                              color: blueWater,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                'Accountant',
                                                                style: TextStyle(
                                                                  fontFamily: 'SFProText',
                                                                  fontSize: content8,
                                                                  fontWeight: FontWeight.w500,
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
                                                              fontFamily: 'SFProText',
                                                              fontSize: content12,
                                                              fontWeight: FontWeight.w500,
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
                                    )
                                  );
                                },
                              ),
                              SizedBox(height: 112)
                            ]
                          )
                        )
                      ),
                    ],
                  ),
                  // Container(
                  //   height: 465,
                  //   child: ListView.separated(
                  //     physics: const AlwaysScrollableScrollPhysics(),
                  //     padding: EdgeInsets.zero,
                  //     scrollDirection: Axis.vertical,
                  //     shrinkWrap: true,
                  //     itemCount: 9,
                  //     separatorBuilder: (BuildContext context, int index) =>
                  //         SizedBox(height: 16),
                  //     itemBuilder: (context, index) {
                  //       return GestureDetector(
                  //         onTap: () {
                  //           watchUserDialog(context);
                  //         },
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //             color: blueLight,
                  //             borderRadius: BorderRadius.circular(8),
                  //           ),
                  //           height: 80,
                  //           width: 319,
                  //           child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 SizedBox(height: 17),
                  //                 Row(
                  //                   children: [
                  //                     SizedBox(
                  //                       width: 24,
                  //                     ),
                  //                     AnimatedContainer(
                  //                       alignment: Alignment.center,
                  //                       duration: Duration(milliseconds: 300),
                  //                       height: 48,
                  //                       width: 48,
                  //                       decoration: BoxDecoration(
                  //                         color: blueWater,
                  //                         borderRadius:
                  //                             BorderRadius.circular(8),
                  //                         image: DecorationImage(
                  //                             image: NetworkImage(
                  //                                 'https://scontent.fsgn5-10.fna.fbcdn.net/v/t1.6435-9/161084499_1011185239289536_7749468629913909457_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=1Z9ynzc2dg4AX_mL5HN&_nc_ht=scontent.fsgn5-10.fna&oh=00_AT92ecLxLZxUsrqM0zA8jcY7hzLCnJ0x_pE78H7gd730uQ&oe=61EC35B8'),
                  //                             fit: BoxFit.cover),
                  //                         shape: BoxShape.rectangle,
                  //                       ),
                  //                     ),
                  //                     SizedBox(
                  //                       width: 24,
                  //                     ),
                  //                     Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         Row(
                  //                           children: [
                  //                             Text(
                  //                               'Pan Cái Chảo',
                  //                               style: TextStyle(
                  //                                 fontSize: content16,
                  //                                 fontWeight: FontWeight.w600,
                  //                                 fontFamily: 'SFProText',
                  //                                 color: blackLight,
                  //                               ),
                  //                             ),
                  //                             SizedBox(
                  //                               width: 50,
                  //                             ),
                  //                             Container(
                  //                               height: 18,
                  //                               width: 48,
                  //                               decoration: BoxDecoration(
                  //                                 borderRadius:
                  //                                     BorderRadius.circular(
                  //                                         4.0),
                  //                                 color: blueWater,
                  //                               ),
                  //                               child: Center(
                  //                                 child: Text(
                  //                                   'Accountant',
                  //                                   style: TextStyle(
                  //                                     fontFamily: 'SFProText',
                  //                                     fontSize: content8,
                  //                                     fontWeight:
                  //                                         FontWeight.w500,
                  //                                     color: white,
                  //                                   ),
                  //                                 ),
                  //                               ),
                  //                             ),
                  //                           ],
                  //                         ),
                  //                         SizedBox(
                  //                           height: 8,
                  //                         ),
                  //                         Row(
                  //                           children: [
                  //                             Icon(
                  //                               Iconsax.sms,
                  //                               color: blackLight,
                  //                               size: 18,
                  //                             ),
                  //                             SizedBox(
                  //                               width: 6,
                  //                             ),
                  //                             Text(
                  //                               'nhatkb2001@gmail.com',
                  //                               style: TextStyle(
                  //                                 fontFamily: 'SFProText',
                  //                                 fontSize: content12,
                  //                                 fontWeight: FontWeight.w500,
                  //                                 color: grey8,
                  //                               ),
                  //                             ),
                  //                           ],
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ]),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
