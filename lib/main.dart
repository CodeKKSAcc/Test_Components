import 'package:flutter/material.dart';
import 'package:test_components/test_styles_and_themes/test_styles&themes.dart';
import 'package:test_components/test_widgets/test_checkbox.dart';
import 'package:test_components/test_widgets/test_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /// To maintain the same theme globally
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red.shade300,
          hoverColor: Colors.black45,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(100)
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade300,
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 36, color: Colors.green, fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w500,
            color: Colors.deepPurpleAccent,
          ),
          labelLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          labelMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
          ),
          labelSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
      ),
      home: TestStyleAndThemes(),
    );
  }
}
