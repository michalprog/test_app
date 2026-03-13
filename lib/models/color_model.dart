import 'package:flutter/material.dart';
import 'package:test_app/enums_consts/enums.dart';

/// model for saving range to generate random color
class ColorModel {
  int _minRed = 0;
  int _maxRed = 255;
  int _minGreen = 0;
  int _maxGreen = 255;
  int _minBlue = 0;
  int _maxBlue = 255;

  /// getters for colors
  int get minRed => _minRed;
  int get maxRed => _maxRed;
  int get minGreen => _minGreen;
  int get maxGreen => _maxGreen;
  int get minBlue => _minBlue;
  int get maxBlue => _maxBlue;

  /// function which set the color for type used by slider
  void changeColors(
    ColorType type, {
    required int minRgb,
    required int maxRgb,
  }) {
    switch (type) {
      case ColorType.red:
        {
          _minRed = minRgb;
          _maxRed = maxRgb;
          break;
        }
      case ColorType.green:
        {
          _minGreen = minRgb;
          _maxGreen = maxRgb;
          break;
        }
      case ColorType.blue:
        {
          _minBlue = minRgb;
          _maxBlue = maxRgb;
          break;
        }
    }
  }

  /// function for getting values for sliders
  RangeValues getRange(ColorType type) {
    switch (type) {
      case ColorType.red:
        return RangeValues(_minRed.toDouble(), _maxRed.toDouble());
      case ColorType.green:
        return RangeValues(_minGreen.toDouble(), _maxGreen.toDouble());
      case ColorType.blue:
        return RangeValues(_minBlue.toDouble(), _maxBlue.toDouble());
    }
  }
}
