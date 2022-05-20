import 'package:airplane_mobile/user%20interface/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  // NOTE: kode dibawah ini akan diimplementasikan nanti karena ada error Null Value saat ini
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BWA Airplane",
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
