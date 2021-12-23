// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// //import constants
// import 'package:ui_fresh_app/constants/colors.dart';
// import 'package:ui_fresh_app/constants/fonts.dart';
// import 'package:ui_fresh_app/constants/images.dart';
// import 'package:ui_fresh_app/constants/others.dart';

// //import others
// import 'package:iconsax/iconsax.dart';

// class atRecentTransactionListWidget extends StatelessWidget {
//   const atRecentTransactionListWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 463,
//           width: 319,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 ListView.separated(
//                   physics: const NeverScrollableScrollPhysics(),
//                   padding: EdgeInsets.zero,
//                   scrollDirection: Axis.vertical,
//                   shrinkWrap: true,
//                   itemCount: 16,
//                   separatorBuilder: (BuildContext context, int index) =>
//                       SizedBox(height: 24),
//                   itemBuilder: (context, index) {
//                     return Container(
//                       child: Row(
//                         children: [
//                           Image.asset(
//                             (index == 2 ||
//                                     index == 5 ||
//                                     index == 7 ||
//                                     index == 8 ||
//                                     index == 10 ||
//                                     index == 12 ||
//                                     index == 14 ||
//                                     index == 15)
//                                 ? 'assets/images/accountant/oderavatar.png'
//                                 : 'assets/images/accountant/drinkavatar.png',
//                           ),
//                           SizedBox(width: 16),
//                           Container(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       child: Text(
//                                         (index == 2 ||
//                                                 index == 5 ||
//                                                 index == 7 ||
//                                                 index == 8 ||
//                                                 index == 10 ||
//                                                 index == 12 ||
//                                                 index == 14 ||
//                                                 index == 15)
//                                             ? 'Order'
//                                             : 'Drink',
//                                         maxLines: 1,
//                                         softWrap: false,
//                                         overflow: TextOverflow.fade,
//                                         style: TextStyle(
//                                             fontSize: content16,
//                                             fontWeight: FontWeight.w600,
//                                             fontFamily: 'SFProText',
//                                             color: blackLight,
//                                             height: 1.0),
//                                       ),
//                                     ),
//                                     Column(
//                                       children: [
//                                         SizedBox(height: 1),
//                                         Container(
//                                           width: 64,
//                                           child: Text(
//                                             ' #' + '2092',
//                                             maxLines: 1,
//                                             softWrap: false,
//                                             overflow: TextOverflow.fade,
//                                             style: TextStyle(
//                                               fontSize: content14,
//                                               fontWeight: FontWeight.w500,
//                                               fontFamily: 'SFProText',
//                                               foreground: Paint()
//                                                 ..shader = (index == 2 ||
//                                                         index == 5 ||
//                                                         index == 7 ||
//                                                         index == 8 ||
//                                                         index == 10 ||
//                                                         index == 12 ||
//                                                         index == 14 ||
//                                                         index == 15)
//                                                     ? redGradient
//                                                     : greenGradient,
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                                 SizedBox(height: 4),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       width: 145,
//                                       child: Text(
//                                         '02.00 pm, 08 Oct 2021',
//                                         maxLines: 1,
//                                         overflow: TextOverflow.fade,
//                                         softWrap: false,
//                                         style: TextStyle(
//                                             fontSize: content12,
//                                             fontWeight: FontWeight.w400,
//                                             fontFamily: 'SFProText',
//                                             color: grey8,
//                                             height: 1.4),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Spacer(),
//                           Container(
//                             width: 102,
//                             child: Text(
//                               (index == 2 ||
//                                       index == 5 ||
//                                       index == 7 ||
//                                       index == 8 ||
//                                       index == 10 ||
//                                       index == 12 ||
//                                       index == 14 ||
//                                       index == 15)
//                                   ? '- ' + '\$68.00'
//                                   : '+ ' + '\$137.00',
//                               maxLines: 1,
//                               overflow: TextOverflow.fade,
//                               softWrap: false,
//                               textAlign: TextAlign.right,
//                               style: TextStyle(
//                                 fontSize: content16,
//                                 fontWeight: FontWeight.w600,
//                                 fontFamily: 'SFProText',
//                                 foreground: Paint()
//                                   ..shader = (index == 2 ||
//                                           index == 5 ||
//                                           index == 7 ||
//                                           index == 8 ||
//                                           index == 10 ||
//                                           index == 12 ||
//                                           index == 14 ||
//                                           index == 15)
//                                       ? redGradient
//                                       : greenGradient,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//                 SizedBox(height: 112)
//               ]
//             )
//           )
//         ),
//       ],
//     );
//   }
// }