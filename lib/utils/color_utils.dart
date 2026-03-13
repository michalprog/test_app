import 'dart:math';
import 'dart:ui';

///function for changing colors for  color provider
Color randomColor() {
  return Color.fromARGB(
    255,
    Random().nextInt(255),
    Random().nextInt(255),
    Random().nextInt(255),
  );
}
