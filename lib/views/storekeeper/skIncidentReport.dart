import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import screens
import 'package:ui_fresh_app/views/accountManagement/profileManagement.dart';
import 'package:ui_fresh_app/views/storekeeper/skIncidentReportCreating.dart';
import 'package:ui_fresh_app/views/storekeeper/skSearchingIncident.dart';
import 'package:ui_fresh_app/views/storekeeper/skwidget/skTabView.dart';

class skIncidentReportScreen extends StatefulWidget {
  const skIncidentReportScreen({Key? key}) : super(key: key);

  @override
  State<skIncidentReportScreen> createState() =>
      _skIncidentReportScreenState();
}

class _skIncidentReportScreenState
    extends State<skIncidentReportScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController _minpricecontroller = TextEditingController();
  TextEditingController _maxpricecontroller = TextEditingController();

  bool haveFilter = false;
  var searchController = TextEditingController();

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
                  SizedBox(height: 34),
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
                            showNumberPad(context);
                          },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(milliseconds: 300),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: (haveFilter == true) ? blackLight : white,
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
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        // padding: EdgeInsets.only(right: 28),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    skIncidentReportCreatingScreen(),
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
                              builder: (context) =>
                                  skIncidentReportSearchingScreen(
                                searchResult: searchController.text,
                                haveFilter: haveFilter,
                              ),
                            ),
                          ),
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
                              height: 1.4
                            ),
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
                  SizedBox(
                    height: 38,
                  ),
                  Text(
                    'Incident Report',
                    style: TextStyle(
                      fontSize: title24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SFProText',
                      color: blackLight,
                    ),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  skTabViewWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  late DateTime _myDateTime;
  bool selected = true;
  double _lowerValue = 0;
  double _upperValue = 0;

  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context, StateSetter setState1) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2019),
      lastDate: DateTime(2023),
    );
    setState1(() {
      selectedDate = selected!;
    });
  }

  DateTime selectedDate1 = DateTime.now();

  _selectDate1(BuildContext context, StateSetter setState1) async {
    final DateTime? selected1 = await showDatePicker(
      context: context,
      initialDate: selectedDate1,
      firstDate: DateTime(2019),
      lastDate: DateTime(2023),
    );
    setState1(() {
      selectedDate1 = selected1!;
    });
  }

  showNumberPad(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter SetState1) {
          return Container(
            height: 473,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Image.asset(
                      'assets/images/accountant/Home_Indicator.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    'Refine Result',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24, left: 28),
                      child: Text(
                        'Category',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 28),
                      child: SizedBox(
                        width: 150.0,
                        height: 45.0,
                        child: new OutlinedButton(
                          onPressed: () {
                            SetState1(() {
                              selected = true;
                            });
                          },
                          child: Text(
                            'income',
                            style: TextStyle(
                              color: selected ? Colors.green : Colors.grey,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                width: 1.5,
                                color: selected ? Colors.green : Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 28),
                      child: SizedBox(
                        width: 150.0,
                        height: 45.0,
                        child: OutlinedButton(
                          onPressed: () {
                            SetState1(() {
                              selected = false;
                            });
                          },
                          child: Text('outcome',
                              style: TextStyle(
                                  color:
                                      selected ? Colors.grey : Colors.green)),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                width: 1.5,
                                color: selected ? Colors.grey : Colors.green),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24, left: 28),
                      child: Text(
                        'Date',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 28),
                      child: SizedBox(
                        width: 120.0,
                        height: 36.0,
                        child: new OutlinedButton(
                          onPressed: () {
                            _selectDate1(context, SetState1);
                          },
                          child: Text(
                            "${selectedDate1.day}/${selectedDate1.month}/${selectedDate1.year}",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1.5, color: Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Image.asset('assets/images/accountant/Arrow.png'),
                    Padding(
                      padding: EdgeInsets.only(right: 28),
                      child: SizedBox(
                        width: 120.0,
                        height: 36.0,
                        child: StatefulBuilder(builder: (context, SetState1) {
                          return OutlinedButton(
                            onPressed: () {
                              _selectDate(context, SetState1);
                            },
                            child: Text(
                                "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                                style: TextStyle(color: Colors.grey)),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 1.5, color: Colors.grey),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 64,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              haveFilter = true;
                            });
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(196, 52),
                            primary: Colors.black,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text(
                            ' Apply',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: ElevatedButton(
                        onPressed: () {
                          SetState1(() {
                            selectedDate = DateTime.now();
                            selectedDate1 = DateTime.now();
                          });
                          setState(() {
                            haveFilter = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(112, 52),
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text(
                          ' Reset',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        });
      },
    );
  }
}
