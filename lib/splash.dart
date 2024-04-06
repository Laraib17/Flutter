import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => home_page())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 43, 42, 42),
        child: Center(
          child: Text(
            "TOH KAISE HAIN AAP LOG",
            style: TextStyle(
                fontSize: 54, color: Color.fromARGB(255, 238, 191, 3)),
          ),
        ),
      ),
    );
  }
}
