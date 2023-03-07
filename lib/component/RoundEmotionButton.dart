import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';

class EmotionButton extends StatelessWidget {
  final String emotion;
  final String emotionText;
  final VoidCallback onPressed;
  EmotionButton(
      {required this.emotion,
        required this.emotionText,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Column(
          children: [
            Text(
              emotion,
              style: kEmotionStyle
            ),
            Text(
              emotionText,
              style: kEmotionTextStyle
            ),
          ],
        ));
  }
}
