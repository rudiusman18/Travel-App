import 'package:airplane_mobile/user%20interface/pages/checkout_page.dart';
import 'package:airplane_mobile/user%20interface/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List seatPosition = ['A', 'B', '', 'C', 'D'];

    // NOTE: Widget template informasi
    Widget informationItem({
      required String informationName,
      required Color color,
      Color? borderColor = Colors.transparent,
    }) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: borderColor!),
            ),
          ),
          Text(
            informationName,
            style: titleTextStyle,
          ),
        ],
      );
    }

    Widget information() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Wrap(
          children: [
            informationItem(
              informationName: 'Available',
              color: Color(0xffE0D9FF),
              borderColor: primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            informationItem(
              informationName: 'Selected',
              color: primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            informationItem(
              informationName: 'Unavailable',
              color: Color(0xffE0D9FF),
            ),
          ],
        ),
      );
    }

// NOTE: seat item content
    Widget seatItem({
      required String seat,
      required String seatNumber,
      int? status = 0,
    }) {
      return Expanded(
        child: Container(
          margin: EdgeInsets.only(
            top: 16,
          ),
          child: Center(
            child: seat == ''
                ? Text(
                    seatNumber,
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  )
                : Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: status == 1 ? primaryColor : Color(0xffE0D9FF),
                      border: Border.all(
                          width: 2,
                          color:
                              status == 0 ? primaryColor : Colors.transparent),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Center(
                      child: status == 1
                          ? Text(
                              'YOU',
                              style: whiteTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            )
                          : SizedBox(),
                    ),
                  ),
          ),
        ),
      );
    }

    Widget seatInformation({
      required String name,
      required String value,
      Color? valueColor,
      required FontWeight fontWeight,
    }) {
      return Row(
        children: [
          Expanded(
              child: Text(
            name,
            style: subtitleTextStyle.copyWith(
              fontWeight: light,
            ),
          )),
          Text(
            value,
            style: titleTextStyle.copyWith(
              fontWeight: fontWeight,
              fontSize: 16,
              color: valueColor,
            ),
          ),
        ],
      );
    }

    Widget seat() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: Column(
          children: [
            // NOTE: Huruf kursi
            Row(
              children: [
                for (int i = 0; i < seatPosition.length; i++)
                  Expanded(
                    child: Center(
                      child: Text(
                        seatPosition[i],
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            // NOTE: seat
            for (int kursi = 1; kursi <= 5; kursi++)
              Row(
                children: [
                  for (int i = 0; i < seatPosition.length; i++)
                    seatItem(
                      seat: seatPosition[i],
                      seatNumber: kursi.toString(),
                    ),
                ],
              ),
            SizedBox(
              height: 30,
            ),
            // NOTE: seatInformation
            seatInformation(
              name: 'Your Seat',
              value: 'A3, B3',
              fontWeight: medium,
            ),
            SizedBox(
              height: 16,
            ),
            seatInformation(
              name: 'Total',
              value: 'IDR 540.000.000',
              valueColor: primaryColor,
              fontWeight: semiBold,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 10,
        ),
        child: CustomButton(
          title: 'Continue to Checkout',
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                child: CheckoutPage(),
                type: PageTransitionType.rightToLeft,
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Select Your\nFavourite Seats',
                style: titleTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              information(),
              seat(),
            ],
          ),
        ),
      ),
    );
  }
}
