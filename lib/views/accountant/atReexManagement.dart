import 'package:another_xlider/another_xlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/accountant/widget_atRexxManagement.dart/income_outcome_widget.dart';
import 'package:ui_fresh_app/views/accountant/widget_atRexxManagement.dart/recent_stransaction_widget.dart';
import 'package:ui_fresh_app/views/accountant/widget_atRexxManagement.dart/revenue_and_expenditure_widget.dart';
import 'package:ui_fresh_app/views/accountant/widget_atRexxManagement.dart/srearch_widget.dart';

class accountantReexManagement extends StatefulWidget {
  const accountantReexManagement({Key? key}) : super(key: key);

  @override
  State<accountantReexManagement> createState() =>
      _accountantReexManagementState();
}

class _accountantReexManagementState extends State<accountantReexManagement> {
  var _minpricecontroller = TextEditingController();
  var _maxpricecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(appPadding),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(background), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://scontent.fsgn5-5.fna.fbcdn.net/v/t1.6435-9/76888832_686654728409257_8144869486420295680_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=fREdzxOPFXEAX8anDQU&tn=GQDoBzXNSN_e_0U-&_nc_ht=scontent.fsgn5-5.fna&oh=9a1d0ebec85c5fd35b8c38b2bb7efbdd&oe=61D2CAC3'),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                    SearchWidget(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                          onTap: () {
                            showNumberPad(context);
                          },
                          child: Image.asset(
                            'assets/images/accountant/filter.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 41,
                ),
                Row(
                  children: [
                    Text(
                      'Revenue and expenditure\nanagement',
                      style: TextStyle(
                        fontSize: title24,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SFProText',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                RevenueAndExpanditureWidget(),
                SizedBox(
                  height: 36,
                ),
                IcomeAndOutcomeWidget(),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Recent transaction',
                      style: TextStyle(
                        fontSize: content16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SFProText',
                        color: blackLight,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      'view all',
                      style: TextStyle(
                        fontSize: content12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SFProText',
                        color: grey8,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                RecentStransactionListWidget(),
              ],
            ),
          ),
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

  FlutterSliderHandler customHandler(IconData icon) {
    return FlutterSliderHandler(
      decoration: BoxDecoration(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 0.05,
                blurRadius: 5,
                offset: Offset(0, 1))
          ],
        ),
        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3), shape: BoxShape.circle),
          child: Icon(
            icon,
            color: Colors.white,
            size: 23,
          ),
        ),
      ),
    );
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
            height: 657,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 28),
                      child: Text(
                        'Date',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 28, top: 5),
                      child: Text(
                        'range',
                        style: TextStyle(fontSize: 16),
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
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24, left: 28),
                      child: Text(
                        'Price Range',
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Text('from'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 92),
                      child: Text('to'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: SizedBox(
                        height: 36,
                        width: 96,
                        child: TextFormField(
                          onChanged: (context) {
                            double a = double.parse(_minpricecontroller.text);
                            _lowerValue = a;
                          },
                          controller: _minpricecontroller,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            prefixText: "\$",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: SizedBox(
                        height: 36,
                        width: 96,
                        child: TextFormField(
                          onChanged: (context) {
                            double b = double.parse(_maxpricecontroller.text);
                            _upperValue = b;
                          },
                          controller: _maxpricecontroller,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            prefixText: "\$",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  margin: EdgeInsets.only(left: 52, right: 52),
                  alignment: Alignment.centerLeft,
                  child: FlutterSlider(
                    values: [_lowerValue, _upperValue],
                    rangeSlider: true,
                    max: 25000,
                    min: 0,
                    step: FlutterSliderStep(step: 100),
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
                        size: 19,
                        color: Colors.black45,
                      ),
                      rightSuffix: Icon(
                        Icons.attach_money,
                        size: 19,
                        color: Colors.black45,
                      ),
                      textStyle: TextStyle(fontSize: 17, color: Colors.black45),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: ElevatedButton(
                          onPressed: () {},
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
                            _lowerValue = 0;
                            _upperValue = 25000;
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
