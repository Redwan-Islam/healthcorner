import 'package:flutter/material.dart';
import 'package:healthcorner/view/signinScreen.dart';
import 'package:healthcorner/view/signupScreen.dart';
import 'package:lottie/lottie.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({Key? key}) : super(key: key);
  static const String routeNames = 'WelcomeScreen';

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LottieBuilder.asset(
              'assets/welcome.json',
              height: 400,
            ),
            const SizedBox(
              height: 60,
            ),
            Material(
              elevation: 5.0,
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, signinScreen.routeNames);
                },
                minWidth: 200.0,
                height: 42.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              elevation: 5.0,
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, signupScreen.routeNames);
                },
                minWidth: 200.0,
                height: 42.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Sign Up', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
