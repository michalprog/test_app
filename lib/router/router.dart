import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/window_widgets/main_view.dart';

/// router for all screens
final GoRouter router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: "/main",
      builder: (BuildContext context, GoRouterState state) {
        return const MainView();
      },
    ),
  ],
);
