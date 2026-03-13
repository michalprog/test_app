import 'package:flutter/cupertino.dart';
import 'package:test_app/utils/color_utils.dart';

///  Provider for changing colors
class ColorProvider extends ChangeNotifier {
  /// Here i safe color that's change automaticly
  Color color = randomColor();

  ///  function  for color change
  void changeColor() {
    // provide random color
    color = randomColor();
    notifyListeners();
  }
}
