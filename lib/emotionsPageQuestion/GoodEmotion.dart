import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shad_baman/component/RoundEmotionButton.dart';

class Good extends StatefulWidget {
  const Good({Key? key}) : super(key: key);

  @override
  _GoodState createState() => _GoodState();
}

class _GoodState extends State<Good> {
  List<String> text = [
    ' متفاوت تر شروع کردم',
    'خبر خوش شنیدم ',
    'استرسم را کنترول کردم',
    'با دوستم ملاقات کردم',
    'مطالعه کردم',
    'برنامه هدفمند تنظیم کردم',

  ];

  bool value = false;
  List<bool> values = [false, false, false, false, false,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.pink[400],
      ),
      body: Column(
        children: [
          EmotionButton(
            emotion: '😊',
            emotionText: 'چه چیزی باعث خوب بودن تان شده؟',
            onPressed: () {},
          ),
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
                                style: TextStyle(fontSize: 30),
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
