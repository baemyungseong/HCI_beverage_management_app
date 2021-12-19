import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

//import views
import 'package:ui_fresh_app/views/accountant/atReexManagement.dart';

//import others
import 'package:iconsax/iconsax.dart';

class atReexManagementSearchScreen extends StatefulWidget {

  atReexManagementSearchScreen({Key? key, required this.searchResult, required this.haveFilter}) : super(key: key);
  String searchResult;
  bool haveFilter;

  @override
  _atReexManagementSearchScreenState createState() => _atReexManagementSearchScreenState();
}

class _atReexManagementSearchScreenState extends State<atReexManagementSearchScreen> {
  
  TextEditingController searchController = TextEditingController();
  bool? useFilter;

  void initState() {
    super.initState();
    searchController.text = widget.searchResult;
    useFilter = widget.haveFilter;
  }

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
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 128),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: appPadding, right: appPadding, bottom: appPadding + 8),
                      child: Column(
                        children: [
                          Container(
                            child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 16,
                              separatorBuilder: (BuildContext context, int index) =>
                                SizedBox(height: 24),
                              itemBuilder: (context, index) {
                                return Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        (index == 2 || index == 5 || index == 7 || index == 8 || index == 10 || index == 12 || index == 14 || index ==15)
                                          ? 'assets/images/accountant/oderavatar.png'
                                          : 'assets/images/accountant/drinkavatar.png',
                                      ),
                                      SizedBox(width: 16),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    (index == 2 || index == 5 || index == 7 || index == 8 || index == 10 || index == 12 || index == 14 || index ==15) 
                                                      ? 'Order' 
                                                      : 'Drink',
                                                    maxLines: 1,
                                                    softWrap: false,
                                                    overflow: TextOverflow.fade,
                                                    style: TextStyle(
                                                      fontSize: content16,
                                                      fontWeight: FontWeight.w600,
                                                      fontFamily: 'SFProText',
                                                      color: blackLight,
                                                      height: 1.0
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    SizedBox(height: 1),
                                                    Container(
                                                      width: 64,
                                                      child: Text(
                                                        ' #' + '2092',
                                                        maxLines: 1,
                                                        softWrap: false,
                                                        overflow: TextOverflow.fade,
                                                        style: TextStyle(
                                                          fontSize: content14,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: 'SFProText',
                                                          foreground: Paint()
                                                            ..shader = (index == 2 || index == 5 || index == 7 || index == 8 || index == 10 || index == 12 || index == 14 || index ==15)
                                                              ? redGradient
                                                              : greenGradient,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 4),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 145,
                                                  child: Text(
                                                    '02.00 pm, 08 Oct 2021',
                                                    maxLines: 1,
                                                    overflow: TextOverflow.fade,
                                                    softWrap: false,
                                                    style: TextStyle(
                                                      fontSize: content12,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'SFProText',
                                                      color: grey8,
                                                      height: 1.4
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 102,
                                        child: Text(
                                          (index == 2 || index == 5 || index == 7 || index == 8 || index == 10 || index == 12 || index == 14 || index ==15)
                                          ? '- ' + '\$68.00'
                                          : '+ ' + '\$137.00',
                                          maxLines: 1,
                                          overflow: TextOverflow.fade,
                                          softWrap: false,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: content16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'SFProText',
                                            foreground: Paint()
                                              ..shader = (index == 2 || index == 5 || index == 7 || index == 8 || index == 10 || index == 12 || index == 14 || index ==15)
                                                ? redGradient : greenGradient,
                                          ),
                                        ),
                                      )
                                    ],
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
                  child: Column(
                    children: [
                      SizedBox(height: 34),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 247,
                            height: 32,
                            child: TextFormField(
                              controller: searchController,
                              // initialValue: widget.searchResult,
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content14,
                                fontWeight: FontWeight.w400,
                                color: blackLight,
                                height: 1.4
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Iconsax.search_normal_1, size: 18),
                                contentPadding: EdgeInsets.only(left: 20, right: 0),
                                hintText: "What're you looking for?",
                                hintStyle: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: content14,
                                  fontWeight: FontWeight.w400,
                                  color: grey8,
                                  height: 1.4
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            )
                          ),
                          Spacer(),
                          Container(
                            // padding: EdgeInsets.only(right: 28),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                // showNumberPad(context);
                              },
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: (useFilter == true) ? blackLight : white,
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
                                  child: Icon(
                                    Iconsax.setting_4,
                                    size: 18, 
                                    color: (useFilter == true) ? white : blackLight
                                  )
                                ),
                              ),
                            )
                          ),
                          SizedBox(width: 8),
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
                                child: Icon(
                                  Iconsax.close_square,
                                  size: 24, 
                                  color: blackLight
                                )
                              ),
                            )
                          ),
                        ],
                      ),
                    ]
                  ),
                )
              ],
            )
          ]
        )
      ),
    );
  }
}
