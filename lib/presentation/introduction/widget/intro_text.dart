import 'package:flutter/material.dart';
import 'package:roamio/config/const/app_const.dart';
import 'package:roamio/config/const/introduction_const.dart';
import 'package:roamio/responsive/font_size_scaler.dart';

class IntroText extends StatelessWidget {
  final int index;

  const IntroText({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Text(
        introContent[index],
        textAlign: index % 2 == 0 ? TextAlign.left : TextAlign.right,
        style: TextStyle(
          color: introTextColor,
          fontSize: FontSizeScaler.calculateFontSize(context, 18),
        ),
      ),
    );
  }
}
