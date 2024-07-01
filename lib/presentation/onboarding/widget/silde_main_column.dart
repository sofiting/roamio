import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SildeMainColumn extends StatelessWidget {
  const SildeMainColumn({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.titleSize,
    required this.caption,
    required this.captionSize,
  });

  final String imageUrl;
  final String title;
  final double titleSize;
  final String caption;
  final double captionSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1, 
            child: LottieBuilder.asset(imageUrl),
          ),
        ),
        const SizedBox(height: 20),
        Flexible(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Flexible(
          child: Text(
            caption,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: captionSize,
              color: Colors.grey[700],
            ),
          ),
        ),
      ],
    );
  }
}
