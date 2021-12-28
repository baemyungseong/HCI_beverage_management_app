import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import views
import 'package:ui_fresh_app/views/bartender/dashboard/btDashboardManagement.dart';
import 'package:ui_fresh_app/views/bartender/mainTask/btMainTaskManagement.dart';
import 'package:ui_fresh_app/views/bartender/inventory/btInventoryManagement.dart';
import 'package:ui_fresh_app/views/bartender/incidentReport/btIncidentReportManagement.dart';

//import others
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class bartenderNavigationBar extends StatefulWidget {
  @override
  _bartenderNavigationBarState createState() => _bartenderNavigationBarState();
}

class _bartenderNavigationBarState extends State<bartenderNavigationBar>
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
          btDashboardManagementScreen(),
          btMainTaskManagementScreen(),
          btInventoryManagementScreen(),
          btIncidentReportManagementScreen()
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
            left: (MediaQuery.of(context).size.width - 244) / 2,
            right: (MediaQuery.of(context).size.width - 244) / 2),
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
                    icon: Icon(Iconsax.element_4, size: 24)),
                Tab(
                    // icon: SvgPicture.asset(
                    //   nbAccountManagement,
                    //   height: 24, width: 24
                    // )
                    icon: Icon(Iconsax.clipboard_text, size: 28)),
                Tab(
                    // icon: SvgPicture.asset(
                    //   nbIncidentReport,
                    //   height: 24, width: 24
                    // )
                    icon: Icon(Iconsax.box, size: 24)),
                Tab(
                    // icon: SvgPicture.asset(
                    //   nbIncidentReport,
                    //   height: 24, width: 24
                    // )
                    icon: Icon(Iconsax.document_text, size: 24)),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}