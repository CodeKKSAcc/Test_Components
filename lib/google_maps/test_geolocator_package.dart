

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

// Initial Learning Video -> https://www.youtube.com/watch?v=09auCH0TAZI

class TestGeolocatorPackage extends StatefulWidget {
  const TestGeolocatorPackage({super.key});

  @override
  State<TestGeolocatorPackage> createState() => _TestGeolocatorPackageState();
}

class _TestGeolocatorPackageState extends State<TestGeolocatorPackage> {

  Future<void> getCurrentLocation() async{

    LocationPermission permission = await Geolocator.checkPermission();

    if(permission == LocationPermission.denied || permission == LocationPermission.deniedForever){
      log("Location Denied");

      LocationPermission askPermission = await Geolocator.requestPermission();
    }
    else{
      Position currPosition = await Geolocator.getCurrentPosition();
      LocationAccuracy acc = LocationAccuracy.best;
      log("Latitude = ${currPosition.latitude}");
      log("Longitude = ${currPosition.longitude}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Geolocator Package"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child: TextButton(onPressed: () async{
        await getCurrentLocation();
        setState(() {

        });
      }, child: Text("Grab Location"))),
    );
  }
}

