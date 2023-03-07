import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shad_baman/checkBoxClass.dart';
import 'package:shad_baman/component/RoundEmotionButton.dart';
import 'package:shad_baman/component/listTileContent.dart';

class Exellent extends StatefulWidget {
  const Exellent({Key? key}) : super(key: key);

  @override
  _ExellentState createState() => _ExellentState();
}

class _ExellentState extends State<Exellent> {
  List<String> text = [
    ' \t  \t☁️ آب وهوا',
    '\t \t 👪 خانواده ',
    '\t \t👨🏻‍🤝‍👨🏼 دوستان',
    '\t  \t👩‍👨‍🏭 همکار',
  ];

  bool value = false;
  List<bool> values = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.pink[400],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EmotionButton(
            emotion: '🤗',
            emotionText: 'علت عالی بودن تان چیست؟',
            onPressed: () {},
          ),
        // Content(text: text, value: values, onChanged: (value){})
          Expanded(
            child: ListView.builder(
                itemCount: text.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pinkAccent,
                        ),
                        child: Column(
                          children: [
                            CheckboxListTile(
                              value: values[index],
                              onChanged: (value) => setState(() {
                                this.values[index] = value!;
                              }),
                              title: Text(
                                text[index],
                                style: TextStyle(fontSize: 35),
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.pinkAccent
              ),
              child: Column(

                children: [
                  Text('موارد دیگر',style: TextStyle(
                      fontSize: 20
                  ),),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'اینجا بنویسید',
                      hintMaxLines: 2,
                      errorMaxLines: 3,

                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
