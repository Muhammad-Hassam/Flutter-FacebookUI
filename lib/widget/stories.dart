import 'package:flutter/material.dart';

Widget Stories(me, url, bgImg) {
  return Padding(
    padding: const EdgeInsets.only(right: 10, top: 10, bottom: 15),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: me
            ? DecorationImage(
                image: NetworkImage(bgImg),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  // ignore: deprecated_member_use
                  Colors.black.withOpacity(0.35),
                  BlendMode.darken,
                ),
              )
            : null,
      ),
      width: 82,
      height: 127,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: me ? 8 : 0, top: me ? 6 : 0),
            child: me
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFF3c41cc), width: 2),
                    ),
                    child: CircleAvatar(backgroundImage: NetworkImage(url)),
                  )
                : SizedBox(
                    height: 80,
                    width: 84,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            height: 80,
                            width: 84,
                            image: NetworkImage(
                              "https://photosly.in/wp-content/uploads/2024/07/boy-dp-pic23.jpg",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 57,
                          right: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF3c41cc),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 4),
            child: Text(
              "Create Story",
              style: TextStyle(
                color: Color(0xFF555555),
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.1,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
