import 'package:airplane_mobile/shared/theme.dart';
import 'package:airplane_mobile/user%20interface/pages/success_book_page.dart';
import 'package:airplane_mobile/user%20interface/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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
                  destinationName,
                  style: titleTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  destinationCity,
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
          bottom: 16,
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
            Text(
              name,
              style: titleTextStyle,
            ),
            Spacer(),
            Expanded(
              child: Text(
                value,
                style: titleTextStyle.copyWith(
                  fontWeight: semiBold,
                  color: value == 'YES'
                      ? greenColor
                      : value == 'NO'
                          ? redColor
                          : name == 'Grand Total'
                              ? primaryColor
                              : titleColor,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      );
    }

    Widget paymentDetail({required String totalAmount}) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 30,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: titleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                // NOTE: Wallet Button
                Container(
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      18,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/wallet_button.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 70,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            18,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Image.asset(
                              'assets/airplane_logo.png',
                              width: 24,
                              height: 24,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Pay',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        totalAmount,
                        style: titleTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Current Balance',
                        style: subtitleTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
              height: 50,
            ),
            Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/checkout_icon.png',
                    width: double.infinity,
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
            // NOTE: Information
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
                  SizedBox(
                    height: 10,
                  ),
                  bookingDetailItem(
                    name: 'Traveler',
                    value: '2 Person',
                  ),
                  bookingDetailItem(
                    name: 'Seat',
                    value: 'A3, B3',
                  ),
                  bookingDetailItem(
                    name: 'Insurance',
                    value: 'YES',
                  ),
                  bookingDetailItem(
                    name: 'Refundable',
                    value: 'NO',
                  ),
                  bookingDetailItem(
                    name: 'VAT',
                    value: '45%',
                  ),
                  bookingDetailItem(
                    name: 'Price',
                    value: 'IDR 8,500,690',
                  ),
                  bookingDetailItem(
                    name: 'Grand Total',
                    value: 'IDR 12,000,000',
                  ),
                ],
              ),
            ),
            paymentDetail(
              totalAmount: 'IDR 8,500,000',
            ),

            CustomButton(
              title: 'Pay Now',
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                      child: SuccessBookPage(),
                      type: PageTransitionType.rightToLeft,
                    ),
                    (route) => false);
              },
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Terms and Conditions',
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
