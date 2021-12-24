import 'package:flutter/material.dart';

String pathImage = "assets/images/";
final primaryColor = Color(0xff51D0D0);
final secondary = Color(0xff887E7E);
final black = Color(0xff000000);
final white = Color(0xffFFFFFF);
final title = Color(0xff5DB0A8);
final darkGreen = Color(0xff1D4D4F);
final softGrey = Color(0xffEFF4FD);
final buttonGrey = Color(0xffDFE4EC);
final gold = Color(0xffC1A063);
final darkGrey = Color(0xff4D5661);
final gray = Color(0xff6F8094);
final hinttext = TextStyle(
  fontSize: 15,
  color: black.withOpacity(0.4),
  fontWeight: FontWeight.w600,
  letterSpacing: 0.06 * 15,
  height: 1.1569,
);
Widget text(String text, color, fontWeight, double fontSize) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: 0.06 * fontSize,
      height: 1.1569,
    ),
  );
}
