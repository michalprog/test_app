import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:test_app/provider/color_provider.dart';

///view for screen where background color changing randomly generated color
class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed("settings"),
       child: Icon(Icons.settings),
      ),
      body: Consumer<ColorProvider>(
        builder: (context, colorProvider, child) {
          return InkWell(
            onTap: colorProvider.changeColor,
            child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              color: colorProvider.color,
              child: const Text(
                "Hello there",
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        },
      ),
    );
  }
}
