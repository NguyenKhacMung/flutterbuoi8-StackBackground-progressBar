import 'package:flutter/material.dart';
import 'package:session8/component/TextInput.dart';
import 'package:session8/component/background.dart';
import 'package:session8/component/btnPrimary.dart';
import 'package:session8/constants.dart';
import 'package:session8/route/path.dart';

class signIn extends StatefulWidget {
  static String path = signin;
  const signIn({Key? key}) : super(key: key);

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
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
                width: 165,
              ),
              text(
                "MediCue",
                title,
                FontWeight.w400,
                28,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  child: Column(
                    children: [
                      Input(
                        hintText: 'Enter your Email',
                        color: white,
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      Input(
                        hintText: 'Enter Password',
                        color: white,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      InkWell(
                        onTap: () {},
                        child: text(
                          "Forgot Password",
                          primaryColor,
                          FontWeight.normal,
                          14,
                        ),
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      btnPrimary(
                        title: "LogIn",
                        fontsize: 35,
                        PH: 70,
                        PV: 11,
                        action: () {
                          Navigator.pushNamed(context, content);
                        },
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          text(
                            "Don’t have an account ? ",
                            black,
                            FontWeight.w400,
                            14,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, signup);
                            },
                            child: text(
                              "Sign Up",
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
