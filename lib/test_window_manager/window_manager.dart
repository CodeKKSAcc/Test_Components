import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

// Material Video Source -> https://www.youtube.com/watch?v=E8zF7N4MdPc

class TestWindowManager extends StatefulWidget {
  const TestWindowManager({super.key});

  @override
  State<TestWindowManager> createState() => _WindowManagerState();
}

class _WindowManagerState extends State<TestWindowManager> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Test Window Manager"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () async {
              await windowManager.minimize();
            },
            icon: Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () async {
              await windowManager.maximize();
            },
            icon: Icon(Icons.copy),
          ),
          IconButton(
            onPressed: () async {
              await windowManager.close();
            },
            hoverColor: Colors.red,
            icon: Icon(Icons.delete),
          ),
        ],
      ),*/
      body: Center(child: Text("Test Window Manager")),
    );
  }
}
