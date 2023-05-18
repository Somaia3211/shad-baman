
import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';

Widget customField(TextFormField textFormField,GlobalKey<FormState> _formKey) {
  return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: screenWidth / 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenWidth,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(3, 3)),
                ]),
            child: Row(
              children: [
                Container(
                  width: screenWidth / 6,
                  child: Icon(
                    Icons.person,
                    color: Color(0XFF347850),
                    //Color(0XFFEEF444C),
                    size: screenWidth / 15,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: screenWidth / 12),
                    child: Form(
                      key: _formKey,
                      child: textFormField,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ));
}

