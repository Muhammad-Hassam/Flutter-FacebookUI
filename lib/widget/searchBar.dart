import 'package:flutter/material.dart';

Widget Search() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://cdn.viewuae.net/wp-content/uploads/2021/08/IMG-Dubai-780x403.jpg",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: SearchBar(
                constraints: BoxConstraints(minHeight: 40, maxWidth: 280),
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                hintText: "Write Something Here ...",
                elevation: WidgetStatePropertyAll(0),
                side: WidgetStatePropertyAll(
                  BorderSide(color: Color(0xFFededed), width: 2),
                ),
                textStyle: WidgetStatePropertyAll(
                  TextStyle(color: Colors.grey, fontSize: 16),
                ),
                hintStyle: WidgetStatePropertyAll(
                  TextStyle(color: Color(0xFFabacac), fontSize: 15),
                ),
              ),
            ),
            Icon(Icons.image_outlined, size: 35, color: Color(0xFF8df890)),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xFFe4e6e6), width: 9.0),
            bottom: BorderSide(color: Color(0xFFe4e6e6), width: 9.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 60,
            right: 60,
            top: 6,
            bottom: 6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Stories", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "Reels",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6569dd),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
