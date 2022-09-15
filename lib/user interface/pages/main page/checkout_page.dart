import 'package:airplane_mobile/shared/theme.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget destinationInformation({
      required String image,
      required String destinationName,
      required String destinationCity,
      required double star,
    }) {
      return Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                18,
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/$image',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lake Ciliwung',
                  style: titleTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Tangerang',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/starIcon.png',
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 1,
          ),
          Text(
            star.toString(),
            style: titleTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        ],
      );
    }

    Widget bookingDetailItem({
      required String name,
      required String value,
    }) {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
          bottom: 30,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/circle_check_icon.png',
              width: 16,
              height: 16,
            ),
            SizedBox(
              width: 6,
            ),
            Expanded(child: Text(name)),
            Text(value),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 56,
            ),
            Container(
              width: 327,
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/checkout_icon.png',
                      width: 300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CGK',
                            style: titleTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            'Tangerang',
                            style: subtitleTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'TLC',
                            style: titleTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            'Ciliwung',
                            style: subtitleTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  18,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  destinationInformation(
                    image: 'destination1.png',
                    destinationName: 'Lake Ciliwung',
                    destinationCity: 'Tangerang',
                    star: 4.8,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // NOTE: Booking detail information
                  Text(
                    'Booking Details',
                    style: titleTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  bookingDetailItem(
                    name: 'Traveler',
                    value: '2 Item',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
