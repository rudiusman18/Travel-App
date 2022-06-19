import 'package:airplane_mobile/user%20interface/pages/main%20page/detail_destination_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
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

// NOTE: popular destination (up section)
    Widget popularDestination({
      required int position,
      String? destinationName,
      String? star,
      String? location,
      String? assets,
    }) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageTransition(
                child: DetailDestinationPage(
                  city: location,
                  destinationName: destinationName,
                  imgUrl: assets,
                  star: star,
                ),
                type: PageTransitionType.rightToLeft),
          );
        },
        child: Container(
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
                      'assets/$assets',
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
                        '$star',
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
                '$destinationName',
                style: titleTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '$location',
                style: subtitleTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ],
          ),
        ),
      );
    }

// NOTE: new destination (below section)
    Widget newDestination({
      String? imgUrl,
      String? destinationName,
      String? city,
      String? star,
    }) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageTransition(
                child: DetailDestinationPage(
                  city: city,
                  destinationName: destinationName,
                  imgUrl: imgUrl,
                  star: star,
                ),
                type: PageTransitionType.rightToLeft),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 16,
          ),
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 16,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/$imgUrl',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
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
                      '$destinationName',
                      style: titleTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '$city',
                      style: subtitleTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
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
                    '$star',
                    style: titleTextStyle.copyWith(
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

    return Scaffold(
      body: ListView(
        children: [
          header(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                popularDestination(
                  position: 0,
                  assets: 'destination1.png',
                  destinationName: 'Lake Ciliwung',
                  location: 'Tangerang',
                  star: '4.8',
                ),
                popularDestination(
                  position: 1,
                  assets: 'destination2.png',
                  destinationName: 'White Houses',
                  location: 'Spain',
                  star: '4.7',
                ),
                popularDestination(
                  position: 2,
                  assets: 'destination3.png',
                  destinationName: 'Hill Heyo',
                  location: 'Monaco',
                  star: '4.8',
                ),
                popularDestination(
                  position: 3,
                  assets: 'destination4.png',
                  destinationName: 'Menarra',
                  location: 'Japan',
                  star: '5.0',
                ),
                popularDestination(
                  position: 4,
                  assets: 'destination5.png',
                  destinationName: 'Payung Teduh',
                  location: 'Singapore',
                  star: '4.8',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              top: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New This Year',
                  style: titleTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
                // NOTE: new destionation card will be here
                newDestination(
                  imgUrl: 'destination6.png',
                  destinationName: 'Danau Beratan',
                  city: 'Singaraja',
                  star: '4.5',
                ),
                newDestination(
                  imgUrl: 'destination7.png',
                  destinationName: 'Sydney Opera',
                  city: 'Australia',
                  star: '4.7',
                ),
                newDestination(
                  imgUrl: 'destination8.png',
                  destinationName: 'Roma',
                  city: 'Italy',
                  star: '4.8',
                ),
                newDestination(
                  imgUrl: 'destination9.png',
                  destinationName: 'Payung Teduh',
                  city: 'Singapore',
                  star: '4.5',
                ),
                newDestination(
                  imgUrl: 'destination10.png',
                  destinationName: 'Hill Hey',
                  city: 'Monaco',
                  star: '4.7',
                ),
                SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
