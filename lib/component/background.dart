import 'package:flutter/material.dart';
import 'package:session8/constants.dart';

class Main extends StatefulWidget {
  const Main({Key? key, required this.body}) : super(key: key);
  final Widget body;

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Image.asset(
            pathImage + "bgt.png",
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Image.asset(
            pathImage + "bgb.png",
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 30),
            width: 141,
            height: 6,
            decoration: BoxDecoration(
              color: black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: widget.body,
          ),
        ),
      ],
    );
  }
}
