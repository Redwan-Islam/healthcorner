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
                  height: 128,
                ),
                const Text(
                  '86.34',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/blood.png',
                  height: 128,
                ),
                const Text(
                  '96.00',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/thermometer.png',
                  height: 128,
                ),
                const Text(
                  '32.14',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Material(
              elevation: 5.0,
              color: Colors.greenAccent,
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
                    Text('Dashboard'),
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
