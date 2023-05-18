import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shad_baman/component/buildCheckBox.dart';
import 'package:shad_baman/component/checkBoxModel.dart';
import 'package:shad_baman/component/RoundEmotionButton.dart';
import 'package:shad_baman/constant.dart';

import 'package:shad_baman/homePage.dart';

class Exellent extends StatefulWidget {
  const Exellent({Key? key}) : super(key: key);

  @override
  _ExellentState createState() => _ExellentState();
}

class _ExellentState extends State<Exellent> {
  //TextEditingController textController = TextEditingController();
  final _firestore = FirebaseFirestore.instance;
  List<CheckBoxModel> checkboxes = [
    CheckBoxModel(title: '\t  \t☁️ آب وهوا', value: false),
    CheckBoxModel(title: '\t \t 👪 خانواده ', value: false),
    CheckBoxModel(title: 'استرسم را کنترول کردم', value: false),
    CheckBoxModel(title: '\t \t👨🏻‍🤝‍👨🏼 دوستان', value: false),
    CheckBoxModel(title: '\t  \t👩‍👨‍🏭 همکار', value: false),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePageWidget()));
              },
              icon: Icon(Icons.person)),
        ],
        backgroundColor: Color(0XFF3F7F5C),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EmotionButton(
            img:'assets/happy.jpg',
           // emotion: '🤗',
            emotionText: 'علت عالی بودن تان چیست؟',
            onPressed: () {},
          ),
          // Content(text: text, value: values, onChanged: (value){})
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: checkboxes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      height: 125,

                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0XFF48B173),
                      ),
                      child: Column(
                        children: [
                          BuildCheckBox(checkboxes[index], index, checkboxes,
                              (newValue) async {
                            setState(() => checkboxes[index] = CheckBoxModel(
                                title: checkboxes[index].title,
                                value: newValue!));
                          }),
                        ],
                      ),
                    ),
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

  press() async {
    List<CheckBoxModel> checked =
        checkboxes.where((element) => element.value).toList();
    String result = '';
    checked.forEach((element) {
      result = result + element.title+'\n';
    });
    await _firestore.collection("Emotion").add({
      "checkboxes": result,
      "data": DateTime.now().microsecondsSinceEpoch
    });
    /*Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePageWidget()),
    );*/
  }
}
