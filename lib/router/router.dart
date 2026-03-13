import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/window_widgets/main_view.dart';
import 'package:test_app/window_widgets/setting_view.dart';

/// router for all screens
final GoRouter router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: "/main",
      name: "main",
      builder: (_, _) {
        return const MainView();
      },
    ),
    GoRoute(
      path: "/settings",
      name: "settings",
      builder: (_, _) {
        return const SettingView();
      },
    ),
  ],
);
