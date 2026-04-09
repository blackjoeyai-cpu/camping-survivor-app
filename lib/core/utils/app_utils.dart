import 'package:flutter/foundation.dart';

@immutable
class AppUtils {
  const AppUtils._();

  static bool get isDebugMode => kDebugMode;

  static bool get isReleaseMode => kReleaseMode;

  static void debugLog(String message) {
    if (kDebugMode) {
      debugPrint('[DEBUG] $message');
    }
  }
}
