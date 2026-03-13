import 'package:flutter/material.dart';
import 'package:test_app/provider/color_provider.dart';

class SliderWidget extends StatefulWidget {
final int type;// 0-Red ,1-Green ,2 Blue
final ColorProvider provider;
  const SliderWidget({required this.provider, required this.type, super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  RangeValues values = const RangeValues(0, 255);
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: values,
      min: 0,
      max: 255,
      divisions: 51,
      labels: RangeLabels(
        values.start.round().toString(),
        values.end.round().toString(),
      ),
      onChanged: (RangeValues newValues) {
        setState(() {
          values = newValues;
          widget.provider.colorModel.changeColors(widget.type, minRgb: values.start.floor(), maxRgb: values.end.floor());
        });
      },
    );
  }
}
