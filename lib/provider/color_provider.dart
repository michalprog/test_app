import 'package:flutter/cupertino.dart';
import 'package:test_app/models/color_model.dart';
import 'package:test_app/utils/color_utils.dart';

///  Provider for changing colors
class ColorProvider extends ChangeNotifier {
  /// in provider are saved color model for saving ranges to generate color and color to show this collor as background color
  ColorModel colorModel = ColorModel();
  Color color = const Color.fromARGB(255, 255, 255, 255);

  /// Here is safe color that's change automatically
  ColorProvider() {
    changeColor();
  }

  ///  function  for color change
  void changeColor() {
    // provide random color
    color = randomColor(colorModel);
    notifyListeners();
  }
}
