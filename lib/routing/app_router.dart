import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/home/presentation/pages/home_page.dart';
import '../features/survival_guide/presentation/pages/survival_guide_page.dart';
import '../features/emergency/presentation/pages/emergency_page.dart';
import '../features/checklist/presentation/pages/checklist_page.dart';
import '../features/settings/presentation/pages/settings_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String survivalGuide = '/survival-guide';
  static const String emergency = '/emergency';
  static const String checklist = '/checklist';
  static const String settings = '/settings';
}

final appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.survivalGuide,
      name: 'survivalGuide',
      builder: (context, state) => const SurvivalGuidePage(),
    ),
    GoRoute(
      path: AppRoutes.emergency,
      name: 'emergency',
      builder: (context, state) => const EmergencyPage(),
    ),
    GoRoute(
      path: AppRoutes.checklist,
      name: 'checklist',
      builder: (context, state) => const ChecklistPage(),
    ),
    GoRoute(
      path: AppRoutes.settings,
      name: 'settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Page not found: ${state.uri}'),
    ),
  ),
);
