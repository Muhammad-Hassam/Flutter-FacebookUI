import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

PreferredSizeWidget HomeBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "facebook",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xFF3c41cc),
                fontSize: 25,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFECE7E7),
                  ),
                  child: Icon(Icons.search, color: Color(0xFF787676), size: 19),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(FontAwesomeIcons.facebookMessenger, size: 20),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
