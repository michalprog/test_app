import 'package:flutter/material.dart';
import 'package:test_app/enums_consts/enums.dart';
import 'package:test_app/provider/color_provider.dart';
import 'package:test_app/utils/color_utils.dart';

// widgets for sliders that change range for generating random color
class SliderWidget extends StatefulWidget {
final ColorType type;// 0-Red ,1-Green ,2 Blue
final ColorProvider provider;
  const SliderWidget({required this.provider, required this.type, super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {

  @override
  Widget build(BuildContext context) {
    RangeValues values = widget.provider.colorModel.getRange(widget.type);

    return Card(
      margin: EdgeInsets.all(10),
      borderOnForeground: true,
      child: ListTile(
        leading: Container(height: 20,width: 20,color: colorFromEnum(widget.type),),
        title: RangeSlider(
          values: values,
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
        ),
      ),
    );
  }
}
