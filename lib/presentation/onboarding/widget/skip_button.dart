import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:roamio/config/theme/app_theme.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 25,
      top: 70,
      child: TextButton(
        child: Text(
          'Skip',
          style: TextStyle(
            fontSize: 18,
            color: AppTheme.appColor,
          ),
        ),
        onPressed: () => context.go('/home_screen'),
      ),
    );
  }
}
