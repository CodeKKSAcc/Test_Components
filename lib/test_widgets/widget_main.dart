import 'package:flutter/material.dart';
import 'package:test_components/test_widgets/test_app_bar.dart';
import 'package:test_components/test_window_manager/window_manager.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();

  const windowOptions = WindowOptions(
    //fullScreen: true,
    maximumSize: Size(2100, 1400),
    skipTaskbar: false,
    minimumSize: Size(500, 500),
    center: true,
    titleBarStyle: TitleBarStyle.normal,
    title: "Test Window Manager"
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.maximize();
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const WidgetMain());
}

class WidgetMain extends StatelessWidget {
  const WidgetMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestWindowManager(),
    );
  }
}
