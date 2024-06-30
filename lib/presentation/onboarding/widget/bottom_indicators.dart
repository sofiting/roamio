import 'package:flutter/material.dart';
import 'package:roamio/config/const/onboarding_const.dart';
import 'package:roamio/config/theme/app_theme.dart';

class BottomIndicators extends StatelessWidget {
  const BottomIndicators({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        slides.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? AppTheme.appColor : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
