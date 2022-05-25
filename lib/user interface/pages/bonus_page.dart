import 'package:airplane_mobile/shared/theme.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: bonus card
    Widget bonusCard({String? name, String? balance}) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 37),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34),
          color: Color(0xff3F32B2),
        ),
        child: Container(
          padding: EdgeInsets.all(defaultMargin),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff3F32B2).withOpacity(0.5),
                  blurRadius: 25.0,
                  offset: Offset(0, 15)),
            ],
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff998EFD).withOpacity(0.1),
                Color(0xff5445E5),
                Color(0xff3F32B2).withOpacity(0.1),
                Color(0xff5445E5),
                Color(0xff998EFD).withOpacity(0.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          name.toString(),
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: medium,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/airplane_logo.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Pay',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: whiteTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR ' + balance.toString(),
                    style: whiteTextStyle.copyWith(
                      fontSize: 26,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

// NOTE: bonus content
    Widget bonusContent() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: titleTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 250,
              child: Text(
                'We give you early credit so you can buy a flight ticket',
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSubmit() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        height: 55,
        width: 220,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              )),
          child: Text(
            'Start Fly Now',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(name: 'Kezie Anne', balance: '280,000,000'),
            bonusContent(),
            buttonSubmit(),
          ],
        ),
      ),
    );
  }
}
