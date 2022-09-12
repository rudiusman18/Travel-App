import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

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
        child: Row(
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
                ? SizedBox()
                : Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                  ),
          ),
        ),
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
            // NOTE: seat 1
            Row(
              children: [
                for (int i = 0; i < seatPosition.length; i++)
                  seatItem(seat: seatPosition[i], seatNumber: '1'),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 24,
          ),
          child: ListView(
            children: [
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
