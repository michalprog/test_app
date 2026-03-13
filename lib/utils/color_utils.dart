import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_app/enums_consts/enums.dart';
import 'package:test_app/models/color_model.dart';

///function for changing colors for  color provider
Color randomColor(ColorModel colorModel) {
const int alpha=255;

  return Color.fromARGB(
    alpha,
    Random().nextInt(colorModel.maxRed-colorModel.minRed+1)
        +colorModel.minRed,//Red
    Random().nextInt(colorModel.maxGreen-colorModel.minGreen+1)
        +colorModel.minGreen, //Green
    Random().nextInt(colorModel.maxBlue-colorModel.minBlue+1)
        +colorModel.minBlue, // Blue
  );
}
//function for returning color from enum
Color colorFromEnum(ColorType type)
{
  switch(type)
  {
    case ColorType.red:
      return Colors.red;
    case ColorType.green:
      return Colors.green;
    case ColorType.blue:
      return Colors.blue;
  }
}