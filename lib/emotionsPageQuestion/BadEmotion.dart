import 'package:flutter/material.dart';
import 'package:shad_baman/component/RoundEmotionButton.dart';

class Bad extends StatefulWidget {
  const Bad({Key? key}) : super(key: key);

  @override
  _BadState createState() => _BadState();
}

class _BadState extends State<Bad> {
  List<String> text = [
    'زنده گی تکراری شده',
    'تمرکز ندارم ',
    'برنامه و هدف ندارم',
    'ناامید هستم',
    'از همه چیز خسته شدم',
    'از آینده ترس دارم',

  ];

  bool value = false;
  List<bool> values = [false, false, false, false, false,false];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text(''),
        backgroundColor: Colors.pink[400],

      ),
      body: Column(
children: [
        EmotionButton(
        emotion: '😞',
        emotionText: 'چرا حالت بده؟',
        onPressed: () {},),

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
