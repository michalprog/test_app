import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
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
        builder: (context, colorProvider, child) {
         return Column(
            children: [
              const Spacer(),
              SliderWidget(provider: colorProvider, type: 0,),
              SliderWidget(provider: colorProvider, type: 1,),
              SliderWidget(provider: colorProvider, type: 2,),
              const Spacer(),

            ],
          );

        }
),
    );
  }
}
