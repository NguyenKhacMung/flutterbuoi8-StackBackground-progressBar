import 'package:flutter/material.dart';
import 'package:session8/component/TextInput.dart';
import 'package:session8/component/background.dart';
import 'package:session8/component/btnPrimary.dart';
import 'package:session8/constants.dart';
import 'package:session8/route/path.dart';

class signUp extends StatefulWidget {
  static String path = signup;
  const signUp({Key? key}) : super(key: key);

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Main(
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                pathImage + "time1.png",
                width: 130,
              ),
              text(
                "MediCue",
                title,
                FontWeight.w400,
                17,
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  child: Column(
                    children: [
                      const Input(
                        hintText: 'Enter your full name',
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      const Input(
                        hintText: 'Enter your Email',
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      const Input(
                        hintText: 'Enter Password',
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      const Input(
                        hintText: 'Confirm Password',
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      btnPrimary(
                        title: "SignUp",
                        fontsize: 35,
                        PH: 53,
                        PV: 11,
                        action: () {
                          Navigator.pushNamed(context, signin);
                        },
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          text(
                            "Already have an account ? ",
                            black,
                            FontWeight.w400,
                            14,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, signin);
                            },
                            child: text(
                              "Sign In",
                              primaryColor,
                              FontWeight.w700,
                              14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
