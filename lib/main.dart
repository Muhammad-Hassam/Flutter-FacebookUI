import 'package:facebookui/widget/appBar.dart';
import 'package:facebookui/widget/tapBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: HomeBar(),
        body: Column(children: [TapBar(context)]),
      ),
    );
  }
}
