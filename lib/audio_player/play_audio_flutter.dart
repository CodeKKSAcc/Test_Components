

import 'package:flutter/material.dart';

void main(){
  runApp(const PlayAudioFlutter());
}

class PlayAudioFlutter extends StatelessWidget {
  const PlayAudioFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
