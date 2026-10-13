import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'accessibility.dart';
import 'router.dart';

void main() {
  runApp(const WeatherApp());
}

/// App root: one MaterialApp per app, with the theme and the router.
class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    // rebuilds when one of the test switches in the settings changes
    return ListenableBuilder(
      listenable: Listenable.merge([largeText, showSemantics]),
      builder: (context, _) => MaterialApp.router(
        title: 'Tempo Açores',
        theme: ThemeData(
          colorSchemeSeed: Colors.teal,
          useMaterial3: true,
          textTheme: GoogleFonts.interTextTheme(),
        ),
        showSemanticsDebugger: showSemantics.value,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: largeText.value
                ? const TextScaler.linear(2)
                : MediaQuery.textScalerOf(context),
          ),
          child: child!,
        ),
        routerConfig: router,
      ),
    );
  }
}
