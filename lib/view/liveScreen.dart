// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:healthcorner/controller/remote_service.dart';
import 'package:healthcorner/model/SensorData.dart';
import 'package:healthcorner/view/dashScreen.dart';

class liveScreen extends StatefulWidget {
  const liveScreen({Key? key}) : super(key: key);
  static const String routeNames = 'liveScreen';

  @override
  State<liveScreen> createState() => _liveScreenState();
}

class _liveScreenState extends State<liveScreen> {
  List<SensorData>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    posts = await RemoteService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Live'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Visibility(
          visible: isLoaded,
          child: ListView.builder(
              itemCount: posts?.length,
              itemBuilder: (context, index) {
                return Padding(
                  // padding: const EdgeInsets.only(top: 30.0),
                  padding: const EdgeInsets.only(top: 75.0),
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
                          Text(
                            posts![index].bpm.toString(),
                            style: const TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/blood.png',
                            height: 100,
                          ),
                          Text(
                            posts![index].spo2.toString() + ".00",
                            style: const TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
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
                            style: TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 90,
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
                );
              }),
          replacement: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/cable.png',
                  height: 130,
                ),
                const Text(
                  "Please connect your device",
                  style: TextStyle(color: Colors.redAccent),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
