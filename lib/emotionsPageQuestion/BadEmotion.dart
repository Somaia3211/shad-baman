import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shad_baman/component/buildCheckBox.dart';
import 'package:shad_baman/component/checkBoxModel.dart';
import 'package:shad_baman/component/RoundEmotionButton.dart';

import '../constant.dart';

class Bad extends StatefulWidget {
  const Bad({Key? key}) : super(key: key);

  @override
  _BadState createState() => _BadState();
}

class _BadState extends State<Bad> {
  List<CheckBoxModel> checkboxes = [
    CheckBoxModel(title: 'زنده گی تکراری شده', value: false),
    CheckBoxModel(title: 'تمرکز ندارم ', value: false),
    CheckBoxModel(title: 'برنامه و هدف ندارم', value: false),
    CheckBoxModel(title: 'از همه چیز خسته شدم', value: false),
    CheckBoxModel(title: 'ناامید هستم', value: false),
    CheckBoxModel(title: 'از آینده ترس دارم', value: false),
  ];
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color(0XFFB95940),
      ),
      body: Column(
        children: [
          EmotionButton(
            img: 'assets/sad.jpg',
           // emotion: '😞',
            emotionText: 'چرا حالت بده؟',
            onPressed: () {},
          ),
          Expanded(
            child: ListView.builder(
                itemCount: checkboxes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0XFFDEA170),
                        ),
                        child:Column(
                          children: [
                            // buildCheckBox(checkboxes[index], index),
                            BuildCheckBox(checkboxes[index], index, checkboxes,
                                    (newValue) async {
                                  setState(() => checkboxes[index] = CheckBoxModel(
                                      title: checkboxes[index].title,
                                      value: newValue!));
                                }),
                          ],
                        )),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextButton(

                  onPressed: () {
                    press();
                  },
                  child: Center(child: Text('ذخیره',style: TextStyle(fontSize: 25),)),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0XFFB95940),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),

                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  press() {
    List<CheckBoxModel> checked =
    checkboxes.where((element) => element.value).toList();
    String result = '';
    checked.forEach((element) {
      result = result + element.title+'\n';
    });
    FirebaseFirestore.instance.collection("Emotion").add({
      "checkboxes": result,
      //"text":textController,
      "data": DateTime.now().microsecondsSinceEpoch
    });
    /*Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePageWidget()),
    );*/
  }
}