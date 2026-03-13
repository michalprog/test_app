import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/provider/color_provider.dart';
import 'package:test_app/router/router.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ColorProvider()),
          ],
     child: const MainApp())
  );
}
/// main app for managing other screens
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }

}
