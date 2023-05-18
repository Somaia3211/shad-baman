import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shad_baman/component/buildCheckBox.dart';
import 'package:shad_baman/component/checkBoxModel.dart';
import 'package:shad_baman/component/RoundEmotionButton.dart';
import 'package:shad_baman/constant.dart';


class Good extends StatefulWidget {
  const Good({Key? key}) : super(key: key);

  @override
  _GoodState createState() => _GoodState();
}

class _GoodState extends State<Good> {
  final _firestore = FirebaseFirestore.instance;


  List<CheckBoxModel> checkboxes = [
    CheckBoxModel(title: ' متفاوت تر شروع کردم', value: false),
    CheckBoxModel(title: 'خبر خوش شنیدم', value: false),
    CheckBoxModel(title: 'استرسم را کنترول کردم', value: false),
    CheckBoxModel(title: 'با دوستم ملاقات کردم', value: false),
    CheckBoxModel(title: 'مطالعه کردم', value: false),
    CheckBoxModel(title: 'برنامه هدفمند تنظیم کردم', value: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color(0XFF3F7F5C),
      ),
      body: Column(
        children: [
          EmotionButton(
            img:'assets/good.jfif',
            // emotion: '😊',
            emotionText: 'چه چیزی باعث خوب بودن تان شده؟',
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
                          color:Color(0XFF48B173),
                        ),
                        child: Column(
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
                    backgroundColor: Color(0XFF3F7F5C),
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
