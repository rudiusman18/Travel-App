import '../../shared/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String title;
  double width;
  Function() onPressed;
  CustomButton({
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          '$title',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
