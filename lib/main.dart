import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static Color randomColor() {
    return Color(Random().nextInt(0xffffffff));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rainbow Waterfall',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text('Rainbow waterfall'),
        ),
        body: ListView.builder(
          itemBuilder: ((_, index) {
            return Container(
              color: randomColor(),
              width: 500,
              height: 500,
            );
          }),
        ),
      ),
    );
  }
}
