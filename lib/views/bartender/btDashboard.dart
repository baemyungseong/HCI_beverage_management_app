import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class bartenderDashboard extends StatelessWidget {
  const bartenderDashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Bartender's Dashboard",
          style: TextStyle(
            fontFamily: 'SFProText',
            fontWeight: FontWeight.w700,
            color: Colors.blueAccent,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}