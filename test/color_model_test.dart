import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/enums_consts/enums.dart';
import 'package:test_app/models/color_model.dart';
void main()
{
test("test change color ", (){

  ColorModel model=ColorModel();
  model.changeColors(ColorType.green, minRgb: 100, maxRgb: 150);
  model.changeColors(ColorType.blue, minRgb: 125, maxRgb: 125);
expect(model.getRange(ColorType.red), RangeValues(0,255));
  expect(model.getRange(ColorType.green), RangeValues(100,150));
  expect(model.getRange(ColorType.blue), RangeValues(125,125));

});

}