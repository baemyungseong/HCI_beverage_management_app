import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class serveDashboard extends StatelessWidget {
  const serveDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Serve's Dashboard",
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
