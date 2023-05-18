import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';

class EmotionButton extends StatelessWidget {
 // final String emotion;
  final String emotionText;
  final VoidCallback onPressed;
  final String img;
  //required this.emotion,
 EmotionButton(
      {

         required this.img,
        required this.emotionText,
        required this.onPressed

      });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Expanded(
          child: Column(
            children: [
              Image.asset(img,
              width: 120,height: 120,),
              /*Text(
                emotion,
                style: kEmotionStyle
              ),*/
              Text(
                emotionText,
                style: kEmotionTextStyle
              ),
            ],
          ),
        ));
  }
}
