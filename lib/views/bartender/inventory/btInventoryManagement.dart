import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import views
import 'package:ui_fresh_app/views/account/profileManagement.dart';
import 'package:ui_fresh_app/views/bartender/inventory/btImportCreating.dart';
import 'package:ui_fresh_app/views/bartender/inventory/btImportDetail.dart';

class btInventoryManagementScreen extends StatefulWidget {
  const btInventoryManagementScreen({Key? key}) : super(key: key);

  @override
  State<btInventoryManagementScreen> createState() =>
      _btInventoryManagementScreenState();
}

class _btInventoryManagementScreenState
    extends State<btInventoryManagementScreen> {
  bool haveSearch = false;
  bool isHorizontal = false;
  TextEditingController searchController = TextEditingController();

  TabController? _tabController;
  int _selectedIndex = 0;
  double _currentPosition = 0.0;

  late PageController pageController;
  double viewportFraction = 0.554;
  double? pageOffset = 0;
  double? scale;

  bool haveFilter = false;

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  List<String> listImage = [
    'https://i.imgur.com/6GfgeBS.png',
    'https://i.imgur.com/vnQWQls.png',
    'https://i.imgur.com/vnQWQls.png',
    'https://i.imgur.com/6GfgeBS.png',
    'https://i.imgur.com/6GfgeBS.png',
    'https://i.imgur.com/6GfgeBS.png',
    'https://i.imgur.com/vnQWQls.png',
    'https://i.imgur.com/vnQWQls.png'
  ];

  List<String> listPrice = ['93', '64', '25', '33', '44', '55', '4', '9'];

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 34 + appPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 28),
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
                                      'https://scontent.fsgn5-5.fna.fbcdn.net/v/t1.6435-9/76888832_686654728409257_8144869486420295680_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=fREdzxOPFXEAX8anDQU&tn=GQDoBzXNSN_e_0U-&_nc_ht=scontent.fsgn5-5.fna&oh=9a1d0ebec85c5fd35b8c38b2bb7efbdd&oe=61D2CAC3'),
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
                        children: <Widget>[
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Noob Chảo',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'SFProText',
                                    color: black,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2),
                              )),
                          SizedBox(height: 1),
                          Container(
                              // alignment: Alignment.topLeft,
                              child: Text('Accountant',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SFProText',
                                    color: grey8,
                                    fontWeight: FontWeight.w400,
                                    // height: 1.4
                                  ))),
                        ],
                      ),
                      Spacer(),
                      Container(
                          // padding: EdgeInsets.only(right: 28),
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              //showFilter(context);
                            },
                            child: AnimatedContainer(
                              alignment: Alignment.center,
                              duration: Duration(milliseconds: 300),
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color:
                                    (haveFilter == true) ? blackLight : white,
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
                                  child: Icon(Iconsax.setting_4,
                                      size: 18,
                                      color: (haveFilter == true)
                                          ? white
                                          : blackLight)),
                            ),
                          )),
                      SizedBox(width: 8),
                      Container(
                        // padding: EdgeInsets.only(right: 28),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    btImportCreatingScreen(),
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
                      SizedBox(width: 28)
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
                          // onEditingComplete: () => Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) =>
                          //         skIncidentReportSearchingScreen(
                          //       searchResult: searchController.text,
                          //       haveFilter: haveFilter,
                          //     ),
                          //   ),
                          // ),
                          style: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: content14,
                              fontWeight: FontWeight.w400,
                              color: grey8,
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
                  SizedBox(height: 38),
                  Row(
                    children: [
                      SizedBox(
                        width: 28,
                      ),
                      Text(
                        'Iventory management',
                        style: TextStyle(
                          fontSize: title24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'SFProText',
                          color: blackLight,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: 375,
                    height: 211,
                    child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(width: 16),
                        itemBuilder: (context, index) {
                          return Container(
                            // height: 234,
                            width: 120,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      color: blueLight,
                                      borderRadius: BorderRadius.circular(16)),
                                  height: 178,
                                  width: 107,
                                  child: Image.network(listImage[index]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  listPrice[index],
                                  style: TextStyle(
                                    fontSize: title20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'SFProText',
                                    color: blackLight,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 28,
                      ),
                      Text(
                        'Import List',
                        style: TextStyle(
                          fontSize: title20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SFProText',
                          color: blackLight,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                      height: 256,
                      padding: EdgeInsets.only(left: 28, right: 28),
                      child: SingleChildScrollView(
                          child: Column(
                        children: [
                          ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 8,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    SizedBox(height: 24),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          btImportDetailScreen(),
                                    ),
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          'assets/images/accountant/oderavatar.png'),
                                      SizedBox(width: 16),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Order',
                                                    maxLines: 1,
                                                    softWrap: false,
                                                    overflow: TextOverflow.fade,
                                                    style: TextStyle(
                                                        fontSize: content16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily: 'SFProText',
                                                        color: blackLight,
                                                        height: 1.0),
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
                                                        overflow:
                                                            TextOverflow.fade,
                                                        style: TextStyle(
                                                          fontSize: content14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'SFProText',
                                                          foreground: Paint()
                                                            ..shader =
                                                                redGradient,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 4),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
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
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily: 'SFProText',
                                                        color: grey8,
                                                        height: 1.4),
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
                                          '- ' + '\$68.00',
                                          maxLines: 1,
                                          overflow: TextOverflow.fade,
                                          softWrap: false,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: content16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'SFProText',
                                            foreground: Paint()
                                              ..shader = redGradient,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 116)
                        ],
                      ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
