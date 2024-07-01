import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:roamio/responsive/font_size_scaler.dart';
import 'package:roamio/responsive/hight_width_scaler.dart';

class SplashImageAnimation extends StatelessWidget {
  const SplashImageAnimation({
    super.key,
    required Animation<double> fadeAnimation,
    required Animation<Offset> slideAnimation,
  })  : _fadeAnimation = fadeAnimation,
        _slideAnimation = slideAnimation;

  final Animation<double> _fadeAnimation;
  final Animation<Offset> _slideAnimation;

  @override
  Widget build(BuildContext context) {
    HightWidthScaler scaler = HightWidthScaler();
    scaler.init(context);

    double scaledFontSize(double baseFontSize) =>
        FontSizeScaler.calculateFontSize(context, baseFontSize);

    return FadeTransition(
      opacity: _fadeAnimation,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            'assets/lottie/plane.json',
            height: scaler.scaleHeight(170),
            width: scaler.scaleWidth(170), 
          ),
          SizedBox(
            height: scaler.scaleHeight(10), 
          ),
          SlideTransition(
            position: _slideAnimation,
            child: Text(
              'Roamio',
              style: TextStyle(
                fontSize: scaledFontSize(28), 
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: scaler.scaleHeight(30), 
          ),
          SlideTransition(
            position: _slideAnimation,
            child: Text(
              'Created by Sophia',
              style: TextStyle(
                color: Colors.white,
                fontSize: scaledFontSize(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
