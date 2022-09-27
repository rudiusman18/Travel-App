import 'package:airplane_mobile/shared/theme.dart';
import 'package:airplane_mobile/user%20interface/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/calendar_image.png',
                height: 150,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 80,
                  bottom: 50,
                ),
                child: Column(
                  children: [
                    Text(
                      'Well Booked 😍',
                      style: titleTextStyle.copyWith(
                        fontSize: 32,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Are you ready to explore \nthe new world of experiences?',
                      textAlign: TextAlign.center,
                      style: subtitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                      width: 220,
                      height: 55,
                      child: CustomButton(
                        title: 'My Bookings',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
