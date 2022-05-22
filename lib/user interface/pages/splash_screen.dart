import 'dart:async';

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  void initState() {
    getInit();
    super.initState();
  }

  getInit() async {
    isLoading = true;
    Future.delayed(Duration(seconds: 5), () {
      isLoading = false;
      Navigator.pushReplacementNamed(context, '/get-started');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/airplane_logo.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'AIRPLANE',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 32,
                  letterSpacing: 10.08,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              isLoading
                  ? CircularProgressIndicator(
                      color: whiteColor,
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
