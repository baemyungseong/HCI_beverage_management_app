import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import others
import 'package:meta/meta.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

class svDrinkCartScreen extends StatefulWidget {
  svDrinkCartScreen({Key? key}): super(key: key);

  @override
  _svDrinkCartScreenState createState() => _svDrinkCartScreenState();
}

class _svDrinkCartScreenState extends State<svDrinkCartScreen> {

  _svDrinkCartScreenState();

  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: blueLight
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 62),
                IconButton(
                  padding: EdgeInsets.only(left: 28),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Iconsax.arrow_square_left,
                      size: 32, color: blackLight),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "Drink Cart",
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: 24.0,
                        color: black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  height: 617,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36.0),
                      topRight: Radius.circular(36.0),
                    )
                  ),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 617,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 32),
                                ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  separatorBuilder: (BuildContext context, int index) => SizedBox(height: 32),
                                  itemBuilder: (context, index) {
                                    return Dismissible(
                                      // key: ValueKey(index), 
                                      key: UniqueKey(), 
                                      background: Container(
                                        padding: EdgeInsets.only(right: 24),
                                        alignment: Alignment.centerRight,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xFFCB356B),
                                              Color(0xFFBD3F32),
                                            ],
                                            stops: [
                                              0.0,
                                              1.0,
                                            ]
                                          ),
                                        ),
                                        child: Icon(Iconsax.minus, size: 56, color: white)
                                      ),
                                      onDismissed: (direction) async {
                                        setState(() {
                                          // lista.removeAt(index);
                                        });
                                        showSnackBar(context, 'The drink has been removed from the cart!', 'success');
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                        },
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 300),
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(left: 20, top: 8, right: 28, bottom: 8),
                                          height: 150,
                                          width: 375,
                                          color: white,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  child: Image.network('https://i.imgur.com/6GfgeBS.png', scale: 10)
                                                ),
                                              ),
                                              SizedBox(width: 24),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 207,
                                                    padding: EdgeInsets.zero,
                                                    child: Text(
                                                      'Honey Tea',
                                                      maxLines: 1,
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        color: blackLight,
                                                        fontSize: title24,
                                                        fontWeight: FontWeight.w700,
                                                        fontFamily: 'SFProText',
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Container(
                                                    width: 223,
                                                    padding: EdgeInsets.zero,
                                                    child: Text(
                                                      'Drinks from honey, bold taste creates a good feeling of sweetness',
                                                      maxLines: 2,
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        color: grey8,
                                                        fontSize: content12,
                                                        fontWeight: FontWeight.w400,
                                                        fontFamily: 'SFProText',
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  SizedBox(height: 12),
                                                  Container(
                                                    width: 223,
                                                    padding: EdgeInsets.zero,
                                                    child: Text(
                                                      'Hot - 70% sugar - 500ml',
                                                      maxLines: 1,
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        color: blackLight,
                                                        fontSize: content12,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: 'SFProText',
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  SizedBox(height: 16),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              height: 24,
                                                              width: 24,
                                                              child: IconButton(
                                                                padding: EdgeInsets.zero,
                                                                onPressed: () {
                                                                  setState(() {
                                                                    if(quantity > 1) {
                                                                      quantity--;
                                                                    }
                                                                  });
                                                                },
                                                                icon: Icon(Iconsax.minus_square,
                                                                    size: 24, color: blackLight),
                                                              ),
                                                            ),
                                                            Container(
                                                              alignment: Alignment.center,
                                                              width: 51,
                                                              padding: EdgeInsets.zero,
                                                              child: Text(
                                                                '$quantity',
                                                                maxLines: 1,
                                                                overflow: TextOverflow.ellipsis,
                                                                style: TextStyle(
                                                                  color: blackLight,
                                                                  fontSize: content20,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontFamily: 'SFProText',
                                                                ),
                                                                textAlign: TextAlign.center,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 24,
                                                              width: 24,
                                                              child: IconButton(
                                                                padding: EdgeInsets.zero,
                                                                onPressed: () {
                                                                  setState(() {
                                                                    if(quantity < 99) {
                                                                      quantity++;
                                                                    }
                                                                  });
                                                                },
                                                                icon: Icon(Iconsax.add_square,
                                                                    size: 24, color: blackLight),
                                                              ),
                                                            )
                                                          ]
                                                        )
                                                      ),
                                                      SizedBox(width: 55),
                                                      Container(
                                                        width: 69,
                                                        alignment: Alignment.centerRight,
                                                        // width: 319,
                                                        child: Text(
                                                          '\$' + '${10.00 * quantity}',
                                                          style: TextStyle(
                                                            color: blackLight,
                                                            fontSize: title20,
                                                            fontWeight: FontWeight.w600,
                                                            fontFamily: 'SFProText',
                                                          ),
                                                          textAlign: TextAlign.right,
                                                        ),
                                                      ),
                                                    ]
                                                  )
                                                ]
                                              )
                                            ]
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                ),
                                SizedBox(height: 32),
                              ]
                            )
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
