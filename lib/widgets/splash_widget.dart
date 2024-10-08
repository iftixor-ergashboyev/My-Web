import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_web/pages/second_splash.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SecondSplash()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: CupertinoColors.activeBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Loading...", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: CupertinoColors.white, fontFamily: "LoadingFont"
              )),
            ),
          ],
        )
    );
  }
}