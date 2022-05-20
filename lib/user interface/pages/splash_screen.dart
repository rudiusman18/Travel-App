import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
            ],
          ),
        ),
      ),
    );
  }
}
