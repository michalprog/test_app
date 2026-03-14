import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/enums_consts/enums.dart';
import 'package:test_app/utils/color_utils.dart';
void main()
{
test("color from enum", (){
expect(colorFromEnum(ColorType.red), Colors.red);
expect(colorFromEnum(ColorType.green), Colors.green);
expect(colorFromEnum(ColorType.blue), Colors.blue);
});

}
