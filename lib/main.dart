import 'package:facebookui/widget/appBar.dart';
import 'package:facebookui/widget/card.dart';
import 'package:facebookui/widget/searchBar.dart';
import 'package:facebookui/widget/stories.dart';
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
        body: Column(
          children: [
            TapBar(context),
            Search(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stories(
                  false,
                  "https://pixahive.com/wp-content/uploads/2020/12/Smart-boy-243721-pixahive-683x1024.jpg",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTKwaNa80FSci_w4WxFP83VdPyaotXEChX-g&s",
                ),
                Stories(
                  true,
                  "https://pixahive.com/wp-content/uploads/2020/12/Smart-boy-243721-pixahive-683x1024.jpg",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTKwaNa80FSci_w4WxFP83VdPyaotXEChX-g&s",
                ),
              ],
            ),
            Post(),
          ],
        ),
      ),
    );
  }
}
