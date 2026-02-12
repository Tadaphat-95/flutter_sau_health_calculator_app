import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_sau_health_calculator_app/views/splash_screen_ui.dart';


void main() {
  runApp(
    FlutterSauHealthCalculatorApp(),
  );
}

class FlutterSauHealthCalculatorApp extends StatefulWidget {
  const FlutterSauHealthCalculatorApp({super.key});

  @override
  State<FlutterSauHealthCalculatorApp> createState() =>
      _FlutterSauHealthCalculatorAppState();
}

class _FlutterSauHealthCalculatorAppState
    extends State<FlutterSauHealthCalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansThaiTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
