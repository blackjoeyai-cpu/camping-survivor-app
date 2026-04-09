import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import 'core/di/injection.dart';
import 'core/theme/app_theme.dart';
import 'routing/app_router.dart';
import 'shared/providers/connectivity_provider.dart';

class CampingSurvivalApp extends ConsumerWidget {
  final Isar isar;

  const CampingSurvivalApp({
    super.key,
    required this.isar,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = appRouter;

    return ProviderScope(
      overrides: [
        isarProvider.overrideWithValue(isar),
      ],
      child: MaterialApp.router(
        title: 'Camping Survival',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        routerConfig: router,
        builder: (context, child) {
          return ConnectivityWidget(
            child: child ?? const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
