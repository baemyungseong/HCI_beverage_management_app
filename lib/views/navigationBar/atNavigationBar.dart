import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import views
import 'package:ui_fresh_app/views/accountant/atDashboard.dart';
import 'package:ui_fresh_app/views/accountant/atMainTaskManagement.dart';
import 'package:ui_fresh_app/views/accountant/atReexManagement.dart';
import 'package:ui_fresh_app/views/accountant/atIncidentReport.dart';

//import others
import 'package:flutter_svg/flutter_svg.dart';

class accountantNavigationBar extends StatefulWidget {
  @override
  _accountantNavigationBarState createState() => _accountantNavigationBarState();
}

class _accountantNavigationBarState extends State<accountantNavigationBar>
  with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          accountantDashboard(),
          accountantMainTaskManagement(),
          accountantReexManagement(),
          accountantIncidentReport()
        ],
        controller: _tabController,
        //onPageChanged: whenPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 48 + 34,
        padding: EdgeInsets.only(
            bottom: 34,
            left: (MediaQuery.of(context).size.width - 236) / 2,
            right: (MediaQuery.of(context).size.width - 236) / 2),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Container(
            color: blackLight,
            child: TabBar(
              labelColor: whiteLight,
              unselectedLabelColor: blackUltraLight,
              // indicator: UnderlineTabIndicator(
              //   borderSide: BorderSide(color: blackLight, width: 0.0),
              // ),
              //For Indicator Show and Customization
              indicatorColor: blackLight,
              tabs: <Widget>[
                Tab(
                    // icon: SvgPicture.asset(
                    //   nbDashboard,
                    //   height: 24, width: 24
                    // )
                    icon: Icon(Icons.space_dashboard_rounded)),
                Tab(
                    // icon: SvgPicture.asset(
                    //   nbAccountManagement,
                    //   height: 24, width: 24
                    // )
                    icon: Icon(Icons.task_rounded)),
                Tab(
                    // icon: SvgPicture.asset(
                    //   nbIncidentReport,
                    //   height: 24, width: 24
                    // )
                    icon: Icon(Icons.payment_rounded)),
                Tab(
                    // icon: SvgPicture.asset(
                    //   nbIncidentReport,
                    //   height: 24, width: 24
                    // )
                    icon: Icon(Icons.report)),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}