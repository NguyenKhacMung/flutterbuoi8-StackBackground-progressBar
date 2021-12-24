import 'package:flutter/material.dart';
import 'package:session8/constants.dart';

class btnPrimary extends StatelessWidget {
  const btnPrimary({
    Key? key,
    this.borderRadius = 10,
    required this.title,
    required this.fontsize,
    required this.action,
    this.PH = 37,
    this.PV = 19,
  }) : super(key: key);
  final String title;
  final double borderRadius;
  final double fontsize;
  final Function action;
  final double PH;
  final double PV;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        action();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: PH, vertical: PV),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(80, 194, 201, 0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: text(
          title,
          white,
          FontWeight.w600,
          fontsize,
        ),
      ),
    );
  }
}
