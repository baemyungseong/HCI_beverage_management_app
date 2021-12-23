import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//colors used in this app

const Color white = Colors.white;
const Color whiteLight = Color(0xFFF5F5F5);

const Color black = Colors.black;
const Color blackLight = Color(0xFF061D32);
const Color blackUltraLight = Color(0xFF3E4D5B);

const Color grey3 = Color(0xFF333333);
const Color grey8 = Color(0xFF888888);
const Color greyC = Color(0xFFCCCCCC);
const Color greyD = Color(0xFFDDDDDD);

const Color blueWater = Color(0xFF5FAAEF);
const Color blueLight = Color(0xFFDDF1FF);

const Color green = Color(0xFF75CA92);
const Color red = Color(0xFFC13C43);
const Color redLight = Color(0xFFDFBEB9);

const greenGradientBackground = [Color(0xFF159957), Color(0xFF159199)];
const redGradientBackground = [Color(0xFFCB356B), Color(0xFFBD3F32)];

final Shader redGradient = LinearGradient(
  colors: <Color>[Color(0xFFCB356B), Color(0xFFBD3F32)],
).createShader(
  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);

final Shader greenGradient = LinearGradient(
  colors: <Color>[Color(0xFF159957), Color(0xFF159199)],
).createShader(
  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);

final Shader blueGradient = LinearGradient(
  colors: <Color>[blueWater, Color(0xFF979DFA)],
).createShader(
  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);

final Shader blackLightShader = LinearGradient(
  colors: <Color>[blackLight, blackLight],
).createShader(
  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);
