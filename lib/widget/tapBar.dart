import 'package:facebookui/models/tabBarIcons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget TapBar(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Color(0xFFadadad), width: 2.0)),
    ),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final iconCount = tapBarIcons.length;
          final totalSpacing = 20.0 * (iconCount - 1);
          final itemWidth = (constraints.maxWidth - totalSpacing) / iconCount;

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(iconCount, (index) {
                return Row(
                  children: [
                    SizedBox(
                      width: itemWidth,
                      child: Center(
                        child: Icon(
                          tapBarIcons[index],
                          color: index == 0
                              ? Color(0xFF3c41cc)
                              : Color(0xFFadadad),
                          size: index == 0 ? 26 : 30,
                        ),
                      ),
                    ),
                    if (index != iconCount - 1) SizedBox(width: 20),
                  ],
                );
              }),
            ),
          );
        },
      ),
    ),
  );
}
