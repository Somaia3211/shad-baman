import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';

Widget fieldTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: screenWidth / 26,
        ),
      ),
    ),
  );
}
