import 'package:flutter/material.dart';

class HightWidthScaler {
  late double _widthScaleFactor;
  late double _heightScaleFactor;

  static final HightWidthScaler _singleton = HightWidthScaler._internal();

  factory HightWidthScaler() {
    return _singleton;
  }

  HightWidthScaler._internal();

  void init(BuildContext context) {
    _widthScaleFactor = MediaQuery.of(context).size.width / 375.0;
    _heightScaleFactor = MediaQuery.of(context).size.height / 812.0;
  }

  double get widthScaleFactor => _widthScaleFactor;

  double get heightScaleFactor => _heightScaleFactor;

  double scaleWidth(double value) {
    return value * _widthScaleFactor;
  }

  double scaleHeight(double value) {
    return value * _heightScaleFactor;
  }
}
