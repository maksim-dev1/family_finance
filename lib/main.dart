import 'dart:async';

import 'package:family_finance/app.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  const sentryDns = String.fromEnvironment('SENTRY_DSN');
  await SentryFlutter.init(
    (options) {
      options.dsn = sentryDns;
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for tracing.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
      // The sampling rate for profiling is relative to tracesSampleRate
      // Setting to 1.0 will profile 100% of sampled transactions:
      options.profilesSampleRate = 1.0;
      options.enableAutoSessionTracking =
          true; // Автоматически отслеживает сессии
      options.attachStacktrace = true; // Добавляет стек вызовов к ошибкам
      options.autoAppStart = true; // Автоматически запускает приложение
    },
    appRunner: () => runZonedGuarded(
      () {
        runApp(App());
      },
      (error, stackTrace) async {
        await Sentry.captureException(error, stackTrace: stackTrace);
      },
    ),
  );
}
