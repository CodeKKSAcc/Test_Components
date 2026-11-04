

import 'package:flutter/material.dart';

class TestMedia extends StatelessWidget {
  const TestMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Height: ${MediaQuery.of(context).size.height}"
                  "\nWidth: ${MediaQuery.of(context).size.width}"
                  "\nAspect Ratio: ${MediaQuery.of(context).size.aspectRatio}"
                  "\nOrientation: ${MediaQuery.of(context).orientation}",
            ),
          ),
        ],
      ),
    );
  }
}
