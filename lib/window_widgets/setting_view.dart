import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:test_app/enums_consts/enums.dart';
import 'package:test_app/provider/color_provider.dart';
import 'package:test_app/widgets/slider_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed("main"),
        child: const Icon(Icons.home),
      ),
body: Consumer<ColorProvider>(
        builder: (_, colorProvider, _) {
         return InkWell(
           onTap: colorProvider.changeColor,
           child: ColoredBox(
             color: colorProvider.color,
             child: Column(
                children: [
                  const Spacer(),
                  const Text(
                    "choose range of colors",
                    style: TextStyle(fontSize: 20),
                  ),
                  SliderWidget(provider: colorProvider, type: ColorType.red,),
                  SliderWidget(provider: colorProvider, type: ColorType.green,),
                  SliderWidget(provider: colorProvider, type: ColorType.blue,),
                  const Spacer(),

                ],
              ),
           ),
         );

        }
),
    );
  }
}
