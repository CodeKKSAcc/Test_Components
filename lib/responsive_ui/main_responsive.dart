

import 'package:flutter/material.dart';
import 'package:test_components/responsive_ui/test_responsive.dart';

void main(){
  runApp(const MainResponsive());
}

class MainResponsive extends StatelessWidget {
  const MainResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestResponsive(),
    );
  }
}
