import 'package:flutter/material.dart';
import 'package:session8/screen/Home.dart';
import 'package:session8/screen/Progress.dart';
import 'package:session8/screen/contents.dart';

import 'package:session8/screen/open.dart';
import 'package:session8/screen/signin.dart';
import 'package:session8/screen/signup.dart';

final Map<String, WidgetBuilder> routes = {
  Open.path: (context) => const Open(),
  Home.path: (context) => const Home(),
  signIn.path: (context) => const signIn(),
  signUp.path: (context) => const signUp(),
  contents.path: (context) => const contents(),
  Progress.path: (context) => const Progress(),
};
