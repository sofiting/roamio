import 'package:flutter/material.dart';
import 'package:roamio/config/theme/app_theme.dart';
import 'package:roamio/presentation/splash/widget/splash_image.dart';

class SplashMainContainer extends StatelessWidget {
  const SplashMainContainer({
    super.key,
    required Animation<double> fadeAnimation,
    required Animation<Offset> slideAnimation,
  })  : _fadeAnimation = fadeAnimation,
        _slideAnimation = slideAnimation;

  final Animation<double> _fadeAnimation;
  final Animation<Offset> _slideAnimation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppTheme.appColor,
      child: SplashImageAnimation(
          fadeAnimation: _fadeAnimation, slideAnimation: _slideAnimation),
    );
  }
}
