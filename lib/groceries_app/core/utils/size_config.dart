import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenWidth * 0.024
        : screenHeight * 0.024;
  }
}

// Get the proportionate height as per screen size
double getHeight(num inputHeight) {
  final double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight.toDouble() / 896.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getWidth(num inputWidth) {
  final double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use

  return (inputWidth.toDouble() / 414.0) * screenWidth;
}

// Get the proportionate font size
double getFont(num size) {
  final double defaultsSize = SizeConfig.defaultSize * size.toDouble();
  return (defaultsSize / 10);
}

extension SizeExtension on num {
  double get w => getWidth(toDouble());
  double get h => getHeight(toDouble());
  double get sp => getFont(toDouble());
}
