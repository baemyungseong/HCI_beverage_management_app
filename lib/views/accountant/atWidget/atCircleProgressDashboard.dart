import 'package:flutter/material.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'dart:math';

class atCircleProgressDashboard extends CustomPainter {
  double currentRev;
  double currentExp;

  atCircleProgressDashboard(this.currentRev, this.currentExp);
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    /*
    Paint paint = Paint()
      ..strokeWidth = 12
      ..color = doneColor
      ..style = PaintingStyle.stroke;
    */
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = 80;
    // canvas.drawCircle(center, radius, paint);
    //draw animation with paint
    Paint paintAnimationArcRev = Paint()
      ..strokeWidth = 15
      ..color = Color(0xFF75CA92)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Paint paintAnimationArcExp = Paint()
      ..strokeWidth = 15
      ..color = Color(0xFFC13C43)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double angleRev = 2 * pi * (currentRev / 100);
    double angleExp = 2 * pi * (currentExp / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        angleExp, false, paintAnimationArcExp);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        angleRev, false, paintAnimationArcRev);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
