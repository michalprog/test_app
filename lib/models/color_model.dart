class ColorModel {
  int _minRed = 0;
  int _maxRed = 255;
  int _minGreen = 0;
  int _maxGreen = 255;
  int _minBlue = 0;
  int _maxBlue = 255;
  int get minRed => this._minRed;
  int get maxRed => this._maxRed;
  int get minGreen => this._minGreen;
  int get maxGreen => this._maxGreen;
  int get minBlue => this._minBlue;
  int get maxBlue => this._maxBlue;
  void changeColors(int type, {required int minRgb, required int maxRgb}) {
    switch (type) {
      case 0:
        {
          _minRed = minRgb;
          _maxRed = maxRgb;
          break;
        }
      case 1:
        {
          _minGreen = minRgb;
          _maxGreen = maxRgb;
          break;
        }
      case 2:
        {
          _minBlue = minRgb;
          _maxBlue = maxRgb;
          break;
        }
    }
  }
}
