

import 'package:flutter/material.dart';
import 'package:test_components/google_maps/test_geolocator_package.dart';
import 'google_maps_home.dart';

void main(){
  runApp(const TestGoogleMaps());
}

class TestGoogleMaps extends StatelessWidget {
  const TestGoogleMaps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestGeolocatorPackage(),
    );
  }
}
