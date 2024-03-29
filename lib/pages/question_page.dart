import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shad_baman/component/RoundEmotionButton.dart';
import 'package:shad_baman/constant.dart';
import 'package:shad_baman/emotionsPageQuestion/BadEmotion.dart';
import 'package:shad_baman/emotionsPageQuestion/ExellenetEmotion.dart';
import 'package:shad_baman/emotionsPageQuestion/GoodEmotion.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("سوالات")),
          backgroundColor:Color(0XFF3F7F5C),
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("امروز چطوری؟",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: EmotionButton(
                          img:'assets/happy.jpg',
                         // emotion: '🤗',
                          emotionText: 'عالی',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Exellent()));
                          },
                        ),
                      ),
                      
                      Expanded(
                        child: EmotionButton(
                          img:'assets/good.jfif',
                         // emotion: '😊',
                          emotionText: 'خوب',
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Good()));
                          },
                        ),
                      ),
                     
                      Expanded(
                        child: EmotionButton(
                          img:'assets/sad.jpg',
                          //emotion: '😞',
                          emotionText: 'بد',
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Bad()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}

