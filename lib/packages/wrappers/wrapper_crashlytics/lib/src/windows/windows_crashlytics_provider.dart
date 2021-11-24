import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_duel_disk/src/di/di.dart';

import '../crashlytics_provider.dart';

@windows
@LazySingleton(as: CrashlyticsProvider)
class WindowsCrashlyticsProvider extends CrashlyticsProvider {
  @override
  // ignore: avoid_annotating_with_dynamic
  void logException(dynamic exception, StackTrace stackTrace) {
    // Ignore on windows. Firebase Crashlytics isn't supported yet.
  }

  @override
  void logFlutterException(FlutterErrorDetails flutterErrorDetails) {
    // Ignore on windows. Firebase Crashlytics isn't supported yet.
  }
}
