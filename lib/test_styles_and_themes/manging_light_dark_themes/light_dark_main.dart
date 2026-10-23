import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:test_components/test_styles_and_themes/manging_light_dark_themes/light_dark_home.dart';
import 'package:test_components/test_styles_and_themes/manging_light_dark_themes/manage_theme_by_provider/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: LightDarkMain(),
    ),
  );
}

class LightDarkMain extends StatelessWidget {
  const LightDarkMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LightDarkHome(),
      theme: ThemeData(
        brightness: Brightness.light,
        /*colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreenAccent,
          brightness: Brightness.light,
        ),*/
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red.shade300,
          hoverColor: Colors.black45,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(100),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade300,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 36,
            color: Colors.green,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          bodySmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          labelLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          labelMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          labelSmall: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
      darkTheme: ThemeData(
        //  brightness: Brightness.dark,
        /*colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreenAccent,
          brightness: Brightness.dark,
        ),*/
        brightness: Brightness.dark,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red.shade300,
          hoverColor: Colors.black45,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(100),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade300,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 36,
            color: Colors.green,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          bodySmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          labelLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          labelMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          labelSmall: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
      /// We will use provider to toggle between the Themes(light and dark)
      themeMode: context.watch<ThemeProvider>().isDarkTheme
          ? ThemeMode.dark
          : ThemeMode.light,
    );
  }
}

