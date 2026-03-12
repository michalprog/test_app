import 'package:flutter/cupertino.dart';
import 'package:test_app/utils/color_utils.dart';

class ColorProvider extends ChangeNotifier{
Color color= randomColor();

void changeColor(){
color=randomColor();
  notifyListeners();
}






}
