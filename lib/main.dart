import 'package:flutter/material.dart';
import 'package:healthcorner/view/SplashScreen.dart';
import 'package:healthcorner/view/dashScreen.dart';
import 'package:healthcorner/view/forgetScreen.dart';
import 'package:healthcorner/view/liveScreen.dart';
import 'package:healthcorner/view/signinScreen.dart';
import 'package:healthcorner/view/signupScreen.dart';
import 'package:healthcorner/view/welcomeScreen.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
      routes: {
        welcomeScreen.routeNames: (context) => const welcomeScreen(),
        signinScreen.routeNames: (context) => const signinScreen(),
        signupScreen.routeNames: (context) => const signupScreen(),
        dashScreen.routeNames: (context) => const dashScreen(),
        liveScreen.routeNames: (context) => const liveScreen(),
        forgetPassword.routeNames: (context) => const forgetPassword(),
      },
    );
  }
}
