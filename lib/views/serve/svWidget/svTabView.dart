import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import views
import 'package:ui_fresh_app/views/serve/incidentReport/svIncidentReportDetail.dart';

//import others
import 'package:iconsax/iconsax.dart';

class svTabViewWidget extends StatefulWidget {
  const svTabViewWidget({Key? key}) : super(key: key);

  @override
  State<svTabViewWidget> createState() => _svTabViewWidgetState();
}

class _svTabViewWidgetState extends State<svTabViewWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    // User? user = FirebaseAuth.instance.currentUser;
    // final userid = user?.uid.toString();
    // uid = userid!;
    // print('The current uid is $uid');
    _tabController.addListener(() {
      setState(() {
        _tabController != _tabController;
      });
      _selectedIndex = _tabController.index;
      print(_selectedIndex);
    });
    // getProjectsDataList();
    // getProjectsIdList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: TabBar(
              controller: _tabController,
              labelStyle: TextStyle(
                fontFamily: 'SFProText',
                color: black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              unselectedLabelStyle: TextStyle(
                  fontFamily: 'SFProText',
                  color: blueWater,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),

              // indicator: UnderlineTabIndicator(
              //   borderSide: BorderSide(color: blackLight, width: 0.0),
              // ),
              //For Indicator Show and Customization
              // indicatorColor: purpleMain,
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
              isScrollable: true,
              onTap: (value) {
                setState(() {
                  _tabController != _tabController;
                });
              },
              tabs: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: new Tab(
                          text: 'All Report',
                          height: (_selectedIndex == 0) ? 40 : 40),
                    ),
                    (_selectedIndex == 0)
                        ? Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              width: 6,
                              height: 6,
                              decoration: new BoxDecoration(
                                color: black,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                        : SizedBox(height: 6),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 12),
                      alignment: Alignment.topCenter,
                      child: new Tab(
                          text: 'Processing',
                          height: (_selectedIndex == 1) ? 40 : 40),
                    ),
                    (_selectedIndex == 1)
                        ? Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                              width: 6,
                              height: 6,
                              decoration: new BoxDecoration(
                                color: black,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                        : SizedBox(height: 6),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      alignment: Alignment.topCenter,
                      child: new Tab(
                          text: 'Done',
                          height: (_selectedIndex == 2) ? 40 : 40),
                    ),
                    (_selectedIndex == 2)
                        ? Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Container(
                              width: 6,
                              height: 6,
                              decoration: new BoxDecoration(
                                color: black,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                        : SizedBox(height: 6),
                  ],
                ),
                // Tab(text: 'In progress'),
                // Tab(text: "To do"),
                // Tab(text: "Done")
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 512,
            child: TabBarView(
              controller: _tabController,
              children: [
                // Container(
                //  height: 169,
                //  width: 267,
                //  padding: EdgeInsets.only(left: 2, right: 24),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color: purpleLight
                //   ),
                // ),
                Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: PageView.builder(
                      controller: PageController(
                          initialPage: 0,
                          keepPage: true,
                          viewportFraction: 1),
                      itemCount: 1,
                      //scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListView.separated(
                            padding: EdgeInsets.only(top: 24, bottom: 120),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    SizedBox(height: 16),
                            itemCount: 8,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          svIncidentReportDetailScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: blueLight,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 80,
                                  width: 319,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 24,
                                          ),
                                          Text(
                                            'Broken Glass',
                                            style: TextStyle(
                                              fontFamily: 'SFProText',
                                              fontSize: content16,
                                              fontWeight: FontWeight.w600,
                                              color: blackLight,
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 10,
                                            height: 10,
                                            decoration: new BoxDecoration(
                                              gradient: (index == 0 ||
                                                      index == 3)
                                                  ? LinearGradient(
                                                      begin: Alignment
                                                          .centerLeft,
                                                      end: Alignment
                                                          .centerRight,
                                                      colors: [
                                                          Color(0xFF159957),
                                                          Color(0xFF159199),
                                                        ],
                                                      stops: [
                                                          0.0,
                                                          1.0,
                                                        ])
                                                  : LinearGradient(
                                                      begin: Alignment
                                                          .centerLeft,
                                                      end: Alignment
                                                          .centerRight,
                                                      colors: [
                                                          Color(0xFFCB356B),
                                                          Color(0xFFBD3F32),
                                                        ],
                                                      stops: [
                                                          0.0,
                                                          1.0,
                                                        ]),
                                              color: black,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 24,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 24,
                                          ),
                                          Icon(Iconsax.clock, size: 18, color: blueWater),
                                          SizedBox(width: 6),
                                          Text(
                                            '02.00 pm, 08 Oct 2021',
                                            style: TextStyle(
                                              fontFamily: 'SFProText',
                                              fontSize: content12,
                                              fontWeight: FontWeight.w500,
                                              color: grey8,
                                            ),
                                          ),
                                          Spacer(),
                                          Column(
                                            children: [
                                              Container(
                                                height: 16,
                                                width: 48,
                                                decoration: BoxDecoration(
                                                  color: blueWater,
                                                  borderRadius: BorderRadius.circular(4)
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'AT#2024',
                                                    style: TextStyle(
                                                      fontFamily: 'SFProText',
                                                      fontSize: content8,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 24),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }
                  )
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: PageView.builder(
                      controller: PageController(
                          initialPage: 0,
                          keepPage: true,
                          viewportFraction: 1),
                      itemCount: 1,
                      //scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListView.separated(
                            padding: EdgeInsets.only(top: 24, bottom: 120),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    SizedBox(height: 16),
                            itemCount: 8,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          svIncidentReportDetailScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: blueLight,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 80,
                                  width: 319,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 24,
                                          ),
                                          Text(
                                            'Broken Glass',
                                            style: TextStyle(
                                              fontFamily: 'SFProText',
                                              fontSize: content16,
                                              fontWeight: FontWeight.w600,
                                              color: blackLight,
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 10,
                                            height: 10,
                                            decoration: new BoxDecoration(
                                              gradient: (index == 0 ||
                                                      index == 3)
                                                  ? LinearGradient(
                                                      begin: Alignment
                                                          .centerLeft,
                                                      end: Alignment
                                                          .centerRight,
                                                      colors: [
                                                          Color(0xFF159957),
                                                          Color(0xFF159199),
                                                        ],
                                                      stops: [
                                                          0.0,
                                                          1.0,
                                                        ])
                                                  : LinearGradient(
                                                      begin: Alignment
                                                          .centerLeft,
                                                      end: Alignment
                                                          .centerRight,
                                                      colors: [
                                                          Color(0xFFCB356B),
                                                          Color(0xFFBD3F32),
                                                        ],
                                                      stops: [
                                                          0.0,
                                                          1.0,
                                                        ]),
                                              color: black,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 24,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 24,
                                          ),
                                          Icon(Iconsax.clock, size: 18, color: blueWater),
                                          SizedBox(width: 6),
                                          Text(
                                            '02.00 pm, 08 Oct 2021',
                                            style: TextStyle(
                                              fontFamily: 'SFProText',
                                              fontSize: content12,
                                              fontWeight: FontWeight.w500,
                                              color: grey8,
                                            ),
                                          ),
                                          Spacer(),
                                          Column(
                                            children: [
                                              Container(
                                                height: 16,
                                                width: 48,
                                                decoration: BoxDecoration(
                                                  color: blueWater,
                                                  borderRadius: BorderRadius.circular(4)
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'AT#2024',
                                                    style: TextStyle(
                                                      fontFamily: 'SFProText',
                                                      fontSize: content8,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 24),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }
                  )
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: PageView.builder(
                      controller: PageController(
                          initialPage: 0,
                          keepPage: true,
                          viewportFraction: 1),
                      itemCount: 1,
                      //scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListView.separated(
                            padding: EdgeInsets.only(top: 24, bottom: 120),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    SizedBox(height: 16),
                            itemCount: 8,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          svIncidentReportDetailScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: blueLight,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 80,
                                  width: 319,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 24,
                                          ),
                                          Text(
                                            'Broken Glass',
                                            style: TextStyle(
                                              fontFamily: 'SFProText',
                                              fontSize: content16,
                                              fontWeight: FontWeight.w600,
                                              color: blackLight,
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 10,
                                            height: 10,
                                            decoration: new BoxDecoration(
                                              gradient: (index == 0 ||
                                                      index == 3)
                                                  ? LinearGradient(
                                                      begin: Alignment
                                                          .centerLeft,
                                                      end: Alignment
                                                          .centerRight,
                                                      colors: [
                                                          Color(0xFF159957),
                                                          Color(0xFF159199),
                                                        ],
                                                      stops: [
                                                          0.0,
                                                          1.0,
                                                        ])
                                                  : LinearGradient(
                                                      begin: Alignment
                                                          .centerLeft,
                                                      end: Alignment
                                                          .centerRight,
                                                      colors: [
                                                          Color(0xFFCB356B),
                                                          Color(0xFFBD3F32),
                                                        ],
                                                      stops: [
                                                          0.0,
                                                          1.0,
                                                        ]),
                                              color: black,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 24,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 24,
                                          ),
                                          Icon(Iconsax.clock, size: 18, color: blueWater),
                                          SizedBox(width: 6),
                                          Text(
                                            '02.00 pm, 08 Oct 2021',
                                            style: TextStyle(
                                              fontFamily: 'SFProText',
                                              fontSize: content12,
                                              fontWeight: FontWeight.w500,
                                              color: grey8,
                                            ),
                                          ),
                                          Spacer(),
                                          Column(
                                            children: [
                                              Container(
                                                height: 16,
                                                width: 48,
                                                decoration: BoxDecoration(
                                                  color: blueWater,
                                                  borderRadius: BorderRadius.circular(4)
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'AT#2024',
                                                    style: TextStyle(
                                                      fontFamily: 'SFProText',
                                                      fontSize: content8,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 24),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
