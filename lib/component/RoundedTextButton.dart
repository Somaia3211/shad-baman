import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';

class RoundedTextButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPress;
  const RoundedTextButton({
    Key? key,
    this.text,
    this.onPress

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: primary),
        height: 60,
        width: screenWidth,
        child: TextButton(
          onPressed: onPress,
          child: Text(
            text!,
            style: kTextButtonTitle,
          ),
        ),
      ),
    );
  }
}