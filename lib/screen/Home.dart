import 'package:flutter/material.dart';
import 'package:session8/component/background.dart';
import 'package:session8/component/btnPrimary.dart';
import 'package:session8/constants.dart';
import 'package:session8/route/path.dart';

class Home extends StatefulWidget {
  static String path = home;
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> dropDown = ['Choose Language', 'English', 'VietLish'];
  String select = 'Choose Language';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Main(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: secondary,
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
                child: DropdownButton<String>(
                  value: select,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: black.withOpacity(0.4),
                      size: 30,
                    ),
                  ),
                  iconSize: 17,
                  elevation: 0,
                  isDense: true,
                  underline: const SizedBox(),
                  style: TextStyle(
                    color: black.withOpacity(0.4),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.06 * 20,
                    height: 1.1569,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      select = newValue!;
                    });
                  },
                  items: dropDown.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(pathImage + "bghome.png"),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  btnPrimary(
                    borderRadius: 50,
                    title: "LogIn",
                    fontsize: 20,
                    PH: 51,
                    PV: 15,
                    action: () {
                      Navigator.pushNamed(context, signin);
                    },
                  ),
                  btnPrimary(
                    borderRadius: 50,
                    title: "SignUp",
                    fontsize: 20,
                    PH: 42,
                    PV: 15,
                    action: () {
                      Navigator.pushNamed(context, signup);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
