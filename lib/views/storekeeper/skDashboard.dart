import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class storekeeperDashboard extends StatelessWidget {
  const storekeeperDashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Storekeeper's Dashboard",
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