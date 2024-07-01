import 'package:flutter/material.dart';
import 'package:roamio/config/const/app_const.dart';
import 'package:roamio/config/const/introduction_const.dart';
import 'package:roamio/responsive/font_size_scaler.dart';

class IntroTitle extends StatelessWidget {
  final int index;

  const IntroTitle({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      introTitle[index],
      style: TextStyle(
        color: introTextColor,
        fontSize: FontSizeScaler.calculateFontSize(context, 38),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
