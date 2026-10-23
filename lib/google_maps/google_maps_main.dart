

import 'package:flutter/material.dart';
import 'google_maps_home.dart';

void main(){
  runApp(const TestGoogleMaps());
}

class TestGoogleMaps extends StatelessWidget {
  const TestGoogleMaps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestGoogleMapsHome(),
    );
  }
}
