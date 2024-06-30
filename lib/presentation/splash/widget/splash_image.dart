import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            'assets/lottie/plane.json',
            height: 170,
            width: 170,
          ),
          const SizedBox(
            height: 10,
          ),
          SlideTransition(
            position: _slideAnimation,
            child: const Text(
              'Roamio',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SlideTransition(
            position: _slideAnimation,
            child: const Text(
              'Created by Sophia',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
