import 'package:flutter/material.dart';
import 'package:whistle_loop_sdk/whistleloop_pixel_fire.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              child: Text('Fetch All Datas'),
              onPressed: () {
                whistleLoopEvents("onlcikmybutton");

              },
            ),
          ],
        ),
      ),
    );
  }
}