import 'package:airplane_mobile/user%20interface/pages/bonus_page.dart';
import 'package:airplane_mobile/user%20interface/pages/get_started_page.dart';
import 'package:airplane_mobile/user%20interface/pages/main_page.dart';
import 'package:airplane_mobile/user%20interface/pages/sign_up_page.dart';
import 'package:airplane_mobile/user%20interface/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BWA Airplane",
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return PageTransition(
                child: SplashScreen(), type: PageTransitionType.scale);
          case '/get-started':
            return PageTransition(
                child: GetStartedPage(), type: PageTransitionType.bottomToTop);
          case '/sign-up':
            return PageTransition(
                child: SignUpPage(), type: PageTransitionType.rightToLeft);
          case '/bonus':
            return PageTransition(
                child: BonusPage(), type: PageTransitionType.rightToLeft);
          case '/main-page':
            return PageTransition(
                child: MainPage(), type: PageTransitionType.rightToLeft);
        }
      },
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
