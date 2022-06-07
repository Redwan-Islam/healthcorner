import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcorner/view/dashScreen.dart';

class liveScreen extends StatefulWidget {
  const liveScreen({Key? key}) : super(key: key);
  static const String routeNames = 'liveScreen';

  @override
  State<liveScreen> createState() => _liveScreenState();
}

class _liveScreenState extends State<liveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Live'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/heart.png',
                  height: 100,
                ),
                const Text(
                  '86.34',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/blood.png',
                  height: 100,
                ),
                const Text(
                  '96.00',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/thermometer.png',
                  height: 100,
                  
                ),
                const Text(
                  '32.14',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            Material(
              elevation: 5.0,
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, dashScreen.routeNames);
                },
                minWidth: 200.0,
                height: 42.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Dashboard',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
