import 'package:airplane_mobile/user%20interface/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class DetailDestinationPage extends StatelessWidget {
  final String? imgUrl;
  final String? destinationName;
  final String? city;
  final String? star;

  DetailDestinationPage({
    this.imgUrl,
    this.destinationName,
    this.city,
    this.star,
  });

  @override
  Widget build(BuildContext context) {
    Widget informationTitle() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        width: double.infinity,
        height: 214,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.9),
            ])),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      '$destinationName ',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  Text(
                    '$city',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 1),
              child: Image.asset(
                'assets/starIcon.png',
                width: 21,
                height: 21,
              ),
            ),
            Text(
              '$star',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget photos({
      required int position,
      required String imgUrl,
    }) {
      return Container(
        width: 70,
        height: 70,
        margin: EdgeInsets.only(
          left: position == 0 ? 20 : 16,
          right: position == 5 ? 20 : 0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: AssetImage('assets/$imgUrl'),
          ),
        ),
      );
    }

    interestItem({required String interest}) {
      return Container(
        constraints: BoxConstraints(
          minWidth: 116,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/circle_check_icon.png',
              width: 16,
              height: 16,
            ),
            SizedBox(
              width: 6,
            ),
            Flexible(
              child: Text(
                '$interest',
                style: titleTextStyle,
              ),
            )
          ],
        ),
      );
    }

    Widget informationDetail() {
      return Container(
        margin: EdgeInsets.only(
          top: 400,
          left: defaultMargin,
          right: defaultMargin,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: titleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  // NOTE: about content is here
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: titleTextStyle.copyWith(
                      height: 2,
                    ),
                  ),
                  // ?? PHOTOS SECTION
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photos',
                    style: titleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
// NOTE: -- DIVIDER BETWEEN 'PHOTOS' TEXT TO PHOTOS CONTAINER
            // NOTE: photos content is here
            SizedBox(
              height: 6,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  photos(position: 0, imgUrl: 'destination6.png'),
                  photos(position: 1, imgUrl: 'destination6.png'),
                  photos(position: 2, imgUrl: 'destination6.png'),
                  photos(position: 3, imgUrl: 'destination6.png'),
                  photos(position: 4, imgUrl: 'destination6.png'),
                  photos(position: 5, imgUrl: 'destination6.png'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Interests',
                    style: titleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    runSpacing: 10,
                    spacing: 23,
                    children: [
                      interestItem(
                        interest: 'Kids Park',
                      ),
                      interestItem(
                        interest: 'Honor Bridge',
                      ),
                      interestItem(
                        interest: 'City Museum',
                      ),
                      interestItem(
                        interest: 'Central Mall',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomNavbar() {
      return BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(
            top: 31,
            left: defaultMargin,
            right: defaultMargin,
            bottom: 31,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 2.500.000',
                      style: titleTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'per orang',
                      style: subtitleTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                title: 'Book Now',
                onPressed: () {},
                width: 170,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: bottomNavbar(),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 450,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/$imgUrl',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: informationTitle(),
              ),
              informationDetail(),
            ],
          ),
        ],
      ),
    );
  }
}
