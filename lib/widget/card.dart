import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget Post() {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(color: Color(0xFFe4e6e6), width: 10.0),
        bottom: BorderSide(color: Color(0xFFe4e6e6), width: 10.0),
      ),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://pixahive.com/wp-content/uploads/2020/12/Smart-boy-243721-pixahive-683x1024.jpg",
                    ),
                  ),
                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Raj_2256",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Checkout New design",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.more_horiz),
                  Icon(Icons.close),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
        Image(
          image: NetworkImage(
            "https://blogassets.airtel.in/wp-content/uploads/2023/04/2-1.jpg",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.solidThumbsUp,
                    color: Color(0xFF3c41cc),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Kashan and 45 others",
                    style: TextStyle(color: Color(0xFFadadad)),
                  ),
                ],
              ),
              Text("23 comments", style: TextStyle(color: Color(0xFFadadad))),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xFFe4e6e6), width: 2.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.thumbsUp,
                      color: Color(0xFFadadad),
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text("likes", style: TextStyle(color: Color(0xFFadadad))),
                  ],
                ),

                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.comment,
                      color: Color(0xFFadadad),
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "comments",
                      style: TextStyle(color: Color(0xFFadadad)),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.share,
                      color: Color(0xFFadadad),
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text("shares", style: TextStyle(color: Color(0xFFadadad))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
