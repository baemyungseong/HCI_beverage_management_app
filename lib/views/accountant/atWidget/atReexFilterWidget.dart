// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// //import constants
// import 'package:ui_fresh_app/constants/colors.dart';
// import 'package:ui_fresh_app/constants/fonts.dart';
// import 'package:ui_fresh_app/constants/images.dart';
// import 'package:ui_fresh_app/constants/others.dart';

// //import others
// import 'package:blur/blur.dart';
// import 'package:iconsax/iconsax.dart';

// showNumberPad(BuildContext context, selected, haveFilter) {
//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     backgroundColor: Colors.transparent,
//     builder: (context) {
//       return StatefulBuilder(
//           builder: (BuildContext context, StateSetter SetState1) {
//         return Container(
//           height: 657,
//           decoration: new BoxDecoration(
//             color: Colors.white,
//             borderRadius: new BorderRadius.only(
//               topLeft: const Radius.circular(40.0),
//               topRight: const Radius.circular(40.0),
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(top: 16),
//                 child:
//                     Image.asset('assets/images/accountant/Home_Indicator.png'),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 16),
//                 child: Text(
//                   'Refine Result',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(top: 24, left: 28),
//                     child: Text(
//                       'Category',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 28),
//                     child: SizedBox(
//                       width: 150.0,
//                       height: 45.0,
//                       child: new OutlinedButton(
//                         onPressed: () {
//                           SetState1(() {
//                             selected = true;
//                           });
//                         },
//                         child: Text(
//                           'income',
//                           style: TextStyle(
//                             color: selected ? Colors.green : Colors.grey,
//                           ),
//                         ),
//                         style: OutlinedButton.styleFrom(
//                           side: BorderSide(
//                               width: 1.5,
//                               color: selected ? Colors.green : Colors.grey),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(right: 28),
//                     child: SizedBox(
//                       width: 150.0,
//                       height: 45.0,
//                       child: OutlinedButton(
//                         onPressed: () {
//                           SetState1(() {
//                             selected = false;
//                           });
//                         },
//                         child: Text('outcome',
//                             style: TextStyle(
//                                 color: selected ? Colors.grey : Colors.green)),
//                         style: OutlinedButton.styleFrom(
//                           side: BorderSide(
//                               width: 1.5,
//                               color: selected ? Colors.grey : Colors.green),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 32,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 28),
//                     child: Text(
//                       'Date',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(right: 28, top: 5),
//                     child: Text(
//                       'range',
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 28),
//                     child: SizedBox(
//                       width: 120.0,
//                       height: 36.0,
//                       child: new OutlinedButton(
//                         onPressed: () {
//                           _selectDate1(context, SetState1);
//                         },
//                         child: Text(
//                           "${selectedDate1.day}/${selectedDate1.month}/${selectedDate1.year}",
//                           style: TextStyle(
//                             color: Colors.grey,
//                           ),
//                         ),
//                         style: OutlinedButton.styleFrom(
//                           side: BorderSide(width: 1.5, color: Colors.grey),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Image.asset('assets/images/accountant/Arrow.png'),
//                   Padding(
//                     padding: EdgeInsets.only(right: 28),
//                     child: SizedBox(
//                       width: 120.0,
//                       height: 36.0,
//                       child: StatefulBuilder(builder: (context, SetState1) {
//                         return OutlinedButton(
//                           onPressed: () {
//                             _selectDate(context, SetState1);
//                           },
//                           child: Text(
//                               "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
//                               style: TextStyle(color: Colors.grey)),
//                           style: OutlinedButton.styleFrom(
//                             side: BorderSide(width: 1.5, color: Colors.grey),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                           ),
//                         );
//                       }),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(top: 24, left: 28),
//                     child: Text(
//                       'Price Range',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 28),
//                     child: Text('from'),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 92),
//                     child: Text('to'),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 28),
//                     child: SizedBox(
//                       height: 36,
//                       width: 96,
//                       child: TextFormField(
//                         onChanged: (context) {
//                           double a = double.parse(_minpricecontroller.text);
//                           _lowerValue = a;
//                         },
//                         controller: _minpricecontroller,
//                         keyboardType: TextInputType.number,
//                         textAlign: TextAlign.center,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8)),
//                           prefixText: "\$",
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 28),
//                     child: SizedBox(
//                       height: 36,
//                       width: 96,
//                       child: TextFormField(
//                         onChanged: (context) {
//                           double b = double.parse(_maxpricecontroller.text);
//                           _upperValue = b;
//                         },
//                         controller: _maxpricecontroller,
//                         keyboardType: TextInputType.number,
//                         textAlign: TextAlign.center,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8)),
//                           prefixText: "\$",
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 32,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 52, right: 52),
//                 alignment: Alignment.centerLeft,
//                 child: FlutterSlider(
//                   values: [_lowerValue, _upperValue],
//                   rangeSlider: true,
//                   max: 25000,
//                   min: 0,
//                   step: FlutterSliderStep(step: 100),
//                   jump: true,
//                   trackBar: FlutterSliderTrackBar(
//                     inactiveTrackBarHeight: 2,
//                     activeTrackBarHeight: 3,
//                   ),
//                   disabled: false,
//                   handler: customHandler(Icons.chevron_right),
//                   rightHandler: customHandler(Icons.chevron_left),
//                   tooltip: FlutterSliderTooltip(
//                     leftPrefix: Icon(
//                       Icons.attach_money,
//                       size: 19,
//                       color: Colors.black45,
//                     ),
//                     rightSuffix: Icon(
//                       Icons.attach_money,
//                       size: 19,
//                       color: Colors.black45,
//                     ),
//                     textStyle: TextStyle(fontSize: 17, color: Colors.black45),
//                   ),
//                   onDragging: (handlerIndex, lowerValue, upperValue) {
//                     SetState1(() {
//                       _lowerValue = lowerValue;
//                       _upperValue = upperValue;
//                       _minpricecontroller.text = lowerValue.toString();
//                       _maxpricecontroller.text = upperValue.toString();
//                     });
//                   },
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 28),
//                     child: ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             haveFilter = true;
//                           });
//                           Navigator.pop(context);
//                         },
//                         style: ElevatedButton.styleFrom(
//                           minimumSize: Size(196, 52),
//                           primary: Colors.black,
//                           shape: new RoundedRectangleBorder(
//                             borderRadius: new BorderRadius.circular(30.0),
//                           ),
//                         ),
//                         child: Text(
//                           ' Apply',
//                           style: TextStyle(color: Colors.white),
//                         )),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 28),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         SetState1(() {
//                           selectedDate = DateTime.now();
//                           selectedDate1 = DateTime.now();
//                           _lowerValue = 0;
//                           _upperValue = 25000;
//                         });
//                         setState(() {
//                           haveFilter = false;
//                         });
//                       },
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(112, 52),
//                         primary: Colors.white,
//                         shape: new RoundedRectangleBorder(
//                           borderRadius: new BorderRadius.circular(30.0),
//                         ),
//                       ),
//                       child: Text(
//                         ' Reset',
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         );
//       });
//     },
//   );
// }
