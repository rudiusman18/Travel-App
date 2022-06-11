import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Howdy, \nKezia Anne',
                    style: titleTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/profileImage.png',
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Where to fly today?',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations({required int position}) {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: position == 0 ? defaultMargin : 0,
          right: defaultMargin,
        ),
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 20,
        ),
        width: 200,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/destination1.png',
                  ),
                ),
              ),
              child: Container(
                width: 54.5,
                height: 30,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      18,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 1),
                      child: Image.asset(
                        'assets/starIcon.png',
                        width: 21,
                        height: 21,
                      ),
                    ),
                    Text(
                      '4.8',
                      style: titleTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lake Ciliwung',
              style: titleTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Tangerang',
              style: subtitleTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                popularDestinations(position: 0),
                popularDestinations(position: 1),
                popularDestinations(position: 2),
                popularDestinations(position: 3),
                popularDestinations(position: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
