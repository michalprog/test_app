import 'package:flutter/cupertino.dart';
import 'package:test_app/models/color_model.dart';
import 'package:test_app/utils/color_utils.dart';

///  Provider for changing colors
class ColorProvider extends ChangeNotifier {
  /// Here i safe color that's change automaticly

  ColorModel colorModel =  ColorModel();
  Color color = const Color.fromARGB(255, 255, 255, 255);
  ///  function  for color change
  void changeColor() {
    // provide random color
    color = randomColor(colorModel);
    notifyListeners();
  }
}
