

import 'package:flutter/material.dart';

class TabBarOne extends StatelessWidget {
  const TabBarOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(),
    );
  }
}

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  State<FinalView> createState() => _FinalViewState();
}

class _FinalViewState extends State<FinalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
