import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'dart:async';

import 'package:flutter_application_1/views/tampilan.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    _animation = Tween<double>(begin: 4.0, end: -1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();

    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Tampilan()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greencolor,
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'asset/image/Untitled-1 1.png',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Sistem Akademik',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 30,
                fontFamily: 'PoppinsEkstraBold',
              ),
            )
          ]),
        ),
      ),
    );
  }
}
