import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healthcorner/view/welcomeScreen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.popAndPushNamed(context, welcomeScreen.routeNames);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          LottieBuilder.asset(
            'assets/splash.json',
          ),
          const SizedBox(
            height: 150,
          ),
          const Text(
            'Health Corner',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Live healthy, Stay young at heart',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
