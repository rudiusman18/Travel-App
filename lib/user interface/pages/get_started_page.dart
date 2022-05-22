import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/get_started_background.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Fly Like a Bird',
                    style: whiteTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      'Explore new world with us and let yourself get an amazing experiences',
                      textAlign: TextAlign.center,
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 220,
                    height: 55,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                      child: Text(
                        'Get Started',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
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
