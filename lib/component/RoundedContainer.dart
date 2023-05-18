import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';

class RoundedContainer extends StatelessWidget {
  final IconData? icon;
  const RoundedContainer({
    Key? key,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight / 2.5,
      width: screenWidth,
      decoration: BoxDecoration(
        color:  Color(0XFF347850),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(70),
        ),
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: screenWidth / 5,
        ),
      ),
    );
  }
}
