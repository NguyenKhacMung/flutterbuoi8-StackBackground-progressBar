import 'package:flutter/material.dart';
import 'package:session8/component/background.dart';
import 'package:session8/component/btnPrimary.dart';
import 'package:session8/constants.dart';
import 'package:session8/route/path.dart';

class Open extends StatefulWidget {
  static String path = open;
  const Open({Key? key}) : super(key: key);

  @override
  _OpenState createState() => _OpenState();
}

class _OpenState extends State<Open> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Main(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              text(
                "MediCue",
                primaryColor,
                FontWeight.w400,
                40,
              ),
              text(
                "Worry less..Live healthier..",
                black.withOpacity(0.3),
                FontWeight.w600,
                16,
              ),
              Image.asset(pathImage + "time1.png"),
              const SizedBox(
                height: 70,
              ),
              text(
                "Welcome to MediCue!",
                black.withOpacity(0.7),
                FontWeight.w600,
                24,
              ),
              const SizedBox(
                height: 30,
              ),
              btnPrimary(
                title: "Get Started",
                fontsize: 30,
                action: () {
                  Navigator.pushNamed(context, home);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
