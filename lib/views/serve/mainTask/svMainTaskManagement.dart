import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';
import 'package:ui_fresh_app/views/serve/mainTask/svSearchMainTask.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/dialogWidget.dart';
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

//import views
import 'package:ui_fresh_app/views/account/profileManagement.dart';
import 'package:ui_fresh_app/views/serve/mainTask/svDrinkDetail.dart';

//import others
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:another_xlider/another_xlider.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

class svMainTaskManagementScreen extends StatefulWidget {
  const svMainTaskManagementScreen({Key? key}) : super(key: key);

  @override
  State<svMainTaskManagementScreen> createState() => _svMainTaskManagementScreenState();
}

class _svMainTaskManagementScreenState extends State<svMainTaskManagementScreen> {

  bool haveSearch = false;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent
      ),
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
              padding: EdgeInsets.only(left: appPadding, top: appPadding, right: appPadding),
              child: Column(
                children: [
                  SizedBox(height: 34),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      Spacer(),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                        child: (haveSearch == true)
                        ? Container(
                          width: 231,
                          height: 32,
                          child: TextFormField(
                            controller: searchController,
                            autofocus: true,
                            onEditingComplete: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => svMainTaskSearchingScreen(
                                  searchResult: searchController.text,
                                  haveFilter: haveFilter,
                                ),
                              ),
                            ),
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
                        )
                        : Container(
                          // padding: EdgeInsets.only(right: 28),
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                haveSearch = true;
                              });
                            },
                            child: AnimatedContainer(
                              alignment: Alignment.center,
                              duration: Duration(milliseconds: 300),
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: blackLight,
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
                                  Iconsax.search_normal_1,
                                  size: 18, 
                                  color: white
                                )
                              ),
                            ),
                          )
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        // padding: EdgeInsets.only(right: 28),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            showFilter(context);
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
                              child: Icon(
                                Iconsax.setting_4,
                                size: 18, 
                                color: (haveFilter == true) ? white : blackLight
                              )
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.zero,
                    child: Text(
                      'Orders List',
                      style: TextStyle(
                        color: blackLight,
                        fontSize: title24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'SFProText',
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Column(
                    children: [
                      Container(
                        height: 670-45,
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
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => svDrinkDetailScreen(),
                                        ),
                                      );
                                      // .then((value) {});
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      child: Row(
                                        children: [
                                          Image.asset('assets/images/accountant/drinkavatar.png'),
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
                                                        'Drink',                          
                                                        maxLines: 1,
                                                        softWrap: false,
                                                        overflow: TextOverflow.fade,
                                                        style: TextStyle(
                                                            fontSize: content16,
                                                            fontWeight: FontWeight.w600,
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
                                                            ' #' + '2022',
                                                            maxLines: 1,
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            style: TextStyle(
                                                              fontSize: content14,
                                                              fontWeight: FontWeight.w500,
                                                              fontFamily: 'SFProText',
                                                              foreground: Paint()
                                                                ..shader = greenGradient,
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
                                              '+ ' + '\$36.00',
                                              maxLines: 1,
                                              overflow: TextOverflow.fade,
                                              softWrap: false,
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: content16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'SFProText',
                                                foreground: Paint()
                                                  ..shader = greenGradient,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 112)
                            ]
                          )
                        )
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

  //Bottom Sheet - start

  TextEditingController _minpricecontroller = TextEditingController();
  TextEditingController _maxpricecontroller = TextEditingController();

  bool haveFilter = false;

  late DateTime selectDate1 = DateTime.now();
  late DateTime selectDate2 = DateTime.now();

  int selected = 0;
  double _lowerValue = 0;
  double _upperValue = 1000;

  void initState() {
    super.initState();
    _minpricecontroller.text = _lowerValue.toString();
    _maxpricecontroller.text = _upperValue.toString();
  }

  FlutterSliderHandler customHandler(IconData icon) {
    return FlutterSliderHandler(
      decoration: BoxDecoration(),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 0.05,
                blurRadius: 5,
                offset: Offset(0, 1))
          ],
        ),
        child: Icon(Iconsax.coin, size: 20, color: blackLight)
      ),
    );
  }

  showFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      elevation: 20,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter SetState1) {
          return Container(
            height: 685 - 96,
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
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  child: Image.asset(indicator),
                ),
                SizedBox(height: 24),
                Container(
                  child: Text(
                    'Refine Result',
                    style: TextStyle(
                      fontSize: title28,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SFProText',
                      color: blackLight,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 28),
                      child: Text(
                        'Date',
                        style: TextStyle(
                            fontSize: content20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SFProText',
                            color: blackLight),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 28, top: 0),
                      child: Text(
                        'range',
                        style: TextStyle(
                            fontSize: content16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: grey8),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 28),
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () async {
                            String category = "reex";
                            DateTime? dt = await datePickerDialog(
                                context, selectDate1, category);
                            if (dt != null) {
                              selectDate1 = dt;
                              SetState1(() {
                                selectDate1 != selectDate1;
                              });
                            }
                            print(selectDate1);
                          },
                          child: AnimatedContainer(
                              alignment: Alignment.center,
                              duration: Duration(milliseconds: 300),
                              height: 36,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border(
                                    top: BorderSide(width: 1, color: greyC),
                                    left: BorderSide(width: 1, color: greyC),
                                    right: BorderSide(width: 1, color: greyC),
                                    bottom: BorderSide(width: 1, color: greyC),
                                  )),
                              child: Center(
                                child: Text(
                                  // "12 November, 2021",
                                  // dd/MM/yyyy
                                  "${DateFormat('yMd').format(selectDate1)}",
                                  // "${selectDate.day} ${selectDate.month}, ${selectDate.year}",
                                  style: TextStyle(
                                    color: blackLight,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              )),
                        )),
                    Container(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                        child: Icon(Iconsax.arrow_right_1,
                            size: 24, color: blackLight)),
                    Container(
                        padding: EdgeInsets.only(right: 28),
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () async {
                            String category = "reex";
                            DateTime? dt = await datePickerDialog(
                                context, selectDate2, category);
                            if (dt != null) {
                              selectDate2 = dt;
                              SetState1(() {
                                selectDate2 != selectDate2;
                              });
                            }
                            print(selectDate2);
                          },
                          child: AnimatedContainer(
                              alignment: Alignment.center,
                              duration: Duration(milliseconds: 300),
                              height: 36,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border(
                                    top: BorderSide(width: 1, color: greyC),
                                    left: BorderSide(width: 1, color: greyC),
                                    right: BorderSide(width: 1, color: greyC),
                                    bottom: BorderSide(width: 1, color: greyC),
                                  )),
                              child: Center(
                                child: Text(
                                  // "12 November, 2021",
                                  "${DateFormat('yMd').format(selectDate2)}",
                                  // "${selectDate.day} ${selectDate.month}, ${selectDate.year}",
                                  style: TextStyle(
                                    color: blackLight,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              )),
                        )),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 28),
                      child: Text(
                        'Price Range',
                        style: TextStyle(
                            fontSize: content20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SFProText',
                            color: blackLight),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 28),
                      child: Text(
                        'from',
                        style: TextStyle(
                            fontSize: content16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: grey8),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 164),
                      child: Text(
                        'to',
                        style: TextStyle(
                            fontSize: content16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SFProText',
                            color: grey8),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 28),
                        height: 36,
                        width: 148,
                        child: TextFormField(
                            style: TextStyle(
                                fontSize: content16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SFProText',
                                color: blackLight,
                                height: 0.8),
                            textAlign: TextAlign.center,
                            onChanged: (context) {
                              double min =
                                  double.parse(_minpricecontroller.text);
                              if (min <= _upperValue) {
                                _lowerValue = min;
                                print(_minpricecontroller.text);
                              }
                            },
                            onEditingComplete: () {
                              SetState1(() {
                                double min =
                                    double.parse(_minpricecontroller.text);
                                if (min <= _upperValue) {
                                  _lowerValue = min;
                                  print(_minpricecontroller.text);
                                } else {
                                  _lowerValue = 0;
                                  _minpricecontroller.text = "0.0";
                                  showSnackBar(context, "text", "error");
                                }
                              });
                            },
                            controller: _minpricecontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: greyC),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              prefixText: "\$",
                              prefixStyle: TextStyle(
                                fontSize: content16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SFProText',
                                color: blackLight,
                              ),
                            )),
                      ),
                      Container(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          child: Icon(Iconsax.arrow_right_1,
                              size: 24, color: blackLight)),
                      Container(
                        padding: const EdgeInsets.only(right: 28),
                        height: 36,
                        width: 148,
                        child: TextFormField(
                          style: TextStyle(
                              fontSize: content16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProText',
                              color: blackLight,
                              height: 0.8),
                          textAlign: TextAlign.center,
                          onChanged: (context) {
                            double max = double.parse(_maxpricecontroller.text);
                            if (_lowerValue <= max) {
                              _upperValue = max;
                              print(_maxpricecontroller.text);
                            }
                          },
                          onEditingComplete: () {
                            SetState1(() {
                              double max =
                                  double.parse(_maxpricecontroller.text);
                              if (_lowerValue <= max) {
                                _upperValue = max;
                                print(_maxpricecontroller.text);
                              } else {
                                _maxpricecontroller.text = "1000.0";
                                _upperValue = 1000;
                                showSnackBar(context, "text", "error");
                              }
                            });
                          },
                          controller: _maxpricecontroller,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: greyC),
                                borderRadius: BorderRadius.circular(8)),
                            prefixText: "\$",
                            prefixStyle: TextStyle(
                              fontSize: content16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProText',
                              color: blackLight,
                            ),
                          ),
                        ),
                      ),
                    ]),
                SizedBox(height: 32),
                Container(
                  margin: EdgeInsets.only(left: 52, right: 52),
                  alignment: Alignment.centerLeft,
                  child: FlutterSlider(
                    values: [_lowerValue, _upperValue],
                    rangeSlider: true,
                    max: 1000,
                    min: 0,
                    step: FlutterSliderStep(step: 1),
                    jump: true,
                    trackBar: FlutterSliderTrackBar(
                      inactiveTrackBarHeight: 2,
                      activeTrackBarHeight: 3,
                    ),
                    disabled: false,
                    handler: customHandler(Icons.chevron_right),
                    rightHandler: customHandler(Icons.chevron_left),
                    tooltip: FlutterSliderTooltip(
                      leftPrefix: Icon(
                        Icons.attach_money,
                        size: 18,
                        color: blackLight,
                      ),
                      rightSuffix: Icon(
                        Icons.attach_money,
                        size: 18,
                        color: blackLight,
                      ),
                      textStyle: TextStyle(
                        fontSize: content16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SFProText',
                        color: blackLight,
                      ),
                    ),
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      SetState1(() {
                        _lowerValue = lowerValue;
                        _upperValue = upperValue;
                        _minpricecontroller.text = lowerValue.toString();
                        _maxpricecontroller.text = upperValue.toString();
                      });
                    },
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: ElevatedButton(
                          onPressed: () {
                            if (selectDate1.isBefore(selectDate2)) {
                              if (_lowerValue <= _upperValue) {
                                setState(() {
                                  haveFilter = true;
                                });
                                Navigator.pop(context);
                              } else {
                                showSnackBar(
                                    context,
                                    'The max value must be greater than the min',
                                    "error");
                              }
                            } else {
                              showSnackBar(
                                  context,
                                  'The max date must be greater than the min',
                                  "error");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(196, 52),
                            primary: Colors.black,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Text(
                            ' Apply',
                            style: TextStyle(
                              fontSize: textButton20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'SFProText',
                              color: white,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: ElevatedButton(
                          onPressed: () {
                            SetState1(() {
                              selected = 0;
                              selectDate1 = DateTime.now();
                              selectDate2 = DateTime.now();
                              _lowerValue = 0;
                              _upperValue = 1000;
                              _minpricecontroller.text = _lowerValue.toString();
                              _maxpricecontroller.text = _upperValue.toString();
                            });
                            setState(() {
                              haveFilter = false;
                            });
                            SetState1(() {
                              haveFilter = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(112, 52),
                            primary: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Text(
                            ' Reset',
                            style: TextStyle(
                              fontSize: textButton20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'SFProText',
                              color: blackLight,
                            ),
                          )),
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
  // /Bottom Sheet - end
  
}
