import 'package:flutter/material.dart';

class FontSizeScaler {
  static double calculateFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;

    double standardWidth = 375.0;

    double scaleFactor = screenWidth / standardWidth;

    double scaledFontSize = baseFontSize * scaleFactor;

    return scaledFontSize.clamp(baseFontSize * 0.8, baseFontSize * 2.0);
  }
}
