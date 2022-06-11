import 'package:airplane_mobile/user%20interface/pages/main%20page/book_page.dart';
import 'package:airplane_mobile/user%20interface/pages/main%20page/home_page.dart';
import 'package:airplane_mobile/user%20interface/pages/main%20page/setting_page.dart';
import 'package:airplane_mobile/user%20interface/pages/main%20page/wallet_page.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget floatingNavbarItem(int position, String assetName) {
      return GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = position;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Image.asset(
              'assets/menu/$assetName',
              width: 24,
              height: 24,
              color: currentIndex == position ? primaryColor : backgroundColor,
            ),
            currentIndex == position
                ? Container(
                    height: 2,
                    width: 24,
                    color: primaryColor,
                  )
                : SizedBox(),
          ],
        ),
      );
    }

    Widget customFloatingNavbar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: 24,
            right: 24,
          ),
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: backgroundColor,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              floatingNavbarItem(0, 'home.png'),
              floatingNavbarItem(1, 'book.png'),
              floatingNavbarItem(2, 'wallet.png'),
              floatingNavbarItem(3, 'settings.png'),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return BookPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();

        default:
          return HomePage();
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            body(),
            // NOTE: ini adalah bottomNavbar
            customFloatingNavbar(),
          ],
        ),
      ),
    );
  }
}
