import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/views/storekeeper/skIncidentReportDetail.dart';

class skTabViewWidget extends StatefulWidget {
  const skTabViewWidget({Key? key}) : super(key: key);

  @override
  State<skTabViewWidget> createState() => _skTabViewWidgetState();
}

class _skTabViewWidgetState extends State<skTabViewWidget>
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
            padding: EdgeInsets.only(top: 10),
            width: double.maxFinite,
            height: 476,
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
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      SizedBox(height: 16),
                              itemCount: 4,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            skIncidentReportDetailScreen(),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 18,
                                        ),
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
                                            Image.asset(
                                              (index == 0 || index == 0)
                                                  ? 'assets/images/accountant/Ellipse137.png'
                                                  : 'assets/images/accountant/Ellipse138.png',
                                            ),
                                            SizedBox(
                                              width: 24,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 23,
                                            ),
                                            Icon(Iconsax.clock),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              '02.00 pm, 08 Oct 2021',
                                              style: TextStyle(
                                                fontFamily: 'SFProText',
                                                fontSize: content12,
                                                fontWeight: FontWeight.w500,
                                                color: blackLight,
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              color: blueWater,
                                              height: 18,
                                              width: 48,
                                              child: Center(
                                                child: Text(
                                                  'AT#2024',
                                                  style: TextStyle(
                                                    fontFamily: 'SFProText',
                                                    fontSize: content8,
                                                    fontWeight: FontWeight.w500,
                                                    color: white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 24,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        })),
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
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      SizedBox(height: 16),
                              itemCount: 4,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            skIncidentReportDetailScreen(),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 18,
                                        ),
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
                                            Image.asset(
                                              (index == 0 || index == 0)
                                                  ? 'assets/images/accountant/Ellipse137.png'
                                                  : 'assets/images/accountant/Ellipse138.png',
                                            ),
                                            SizedBox(
                                              width: 24,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 23,
                                            ),
                                            Icon(Iconsax.clock),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              '02.00 pm, 08 Oct 2021',
                                              style: TextStyle(
                                                fontFamily: 'SFProText',
                                                fontSize: content12,
                                                fontWeight: FontWeight.w500,
                                                color: blackLight,
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              color: blueWater,
                                              height: 18,
                                              width: 48,
                                              child: Center(
                                                child: Text(
                                                  'AT#2024',
                                                  style: TextStyle(
                                                    fontFamily: 'SFProText',
                                                    fontSize: content8,
                                                    fontWeight: FontWeight.w500,
                                                    color: white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 24,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        })),
                Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: PageView.builder(
                    controller: PageController(
                        initialPage: 0, keepPage: true, viewportFraction: 1),
                    itemCount: 1,
                    //scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) =>
                              SizedBox(height: 16),
                          itemCount: 4,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        skIncidentReportDetailScreen(),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 18,
                                    ),
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
                                        Image.asset(
                                          (index == 0 || index == 0)
                                              ? 'assets/images/accountant/Ellipse137.png'
                                              : 'assets/images/accountant/Ellipse138.png',
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 23,
                                        ),
                                        Icon(Iconsax.clock),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          '02.00 pm, 08 Oct 2021',
                                          style: TextStyle(
                                            fontFamily: 'SFProText',
                                            fontSize: content12,
                                            fontWeight: FontWeight.w500,
                                            color: blackLight,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          color: blueWater,
                                          height: 18,
                                          width: 48,
                                          child: Center(
                                            child: Text(
                                              'AT#2024',
                                              style: TextStyle(
                                                fontFamily: 'SFProText',
                                                fontSize: content8,
                                                fontWeight: FontWeight.w500,
                                                color: white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
