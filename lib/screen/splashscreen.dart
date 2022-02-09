import 'dart:async';

import 'package:flutter/material.dart';
import 'package:saloon/main.dart';
import 'package:saloon/screen/homepage.dart';

class SplashScreen extends StatefulWidget {
  final dynamic student;
  SplashScreen({this.student});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _height = 150;
  double _width = 300;
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => setState(() {
              _height = 500;
              _width = 800;
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            }));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.transparent),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/Logo_dark.png",
                      height: _height, width: _width),
                ),
                CircularProgressIndicator(
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
