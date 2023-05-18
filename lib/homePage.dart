import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shad_baman/constant.dart';
import 'package:shad_baman/pages/settinf_form.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String formatTimestamp(Timestamp timestamp) {
    var format = new DateFormat('y-M-d'); // <- use skeleton here
    return format.format(timestamp.toDate());
  }
  final _firestore = FirebaseFirestore.instance;


  @override
  Widget build(BuildContext context) {
    void bottomSheet(){
      showModalBottomSheet(context: context,builder: (context){
       return Container(
         padding: EdgeInsets.symmetric(vertical: 20,horizontal: 60),
         child: SettingForm(),
       );
      });
    }


    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        actions: [
          IconButton(onPressed: (){
            bottomSheet();
          }, icon: Icon(Icons.settings,))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              //reverse: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     // height: 200,
                      width: double.infinity,
                      child: StreamBuilder<QuerySnapshot>(
                        stream: _firestore.collection('Emotion').orderBy('data').snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Expanded(
                              child: Center(
                                child: CircularProgressIndicator(
                                  backgroundColor: Colors.pink,
                                ),
                              ),
                            );
                          }
                          if (snapshot.hasData) {
                            var emotions = snapshot.data!.docs;
                            List<Widget> emotionBubbles = [];

                            for (var emotion in emotions) {
                              var emotionText = emotion.get('checkboxes');
                              var date=emotion.get('data');

                              Widget emotionBubble =
                                  EmotionBubble(emotionText: emotionText,date: date);

                                emotionBubbles.add(emotionBubble);

                            }
                            return Expanded(
                              child: Column(
                                children: emotionBubbles,
                              ),
                            );
                          } else {
                            return Center(
                              child: Text('aksjdjdjd'),
                            );
                          }
                        },
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class EmotionBubble extends StatelessWidget {
  final String emotionText;
  final int date;
  const EmotionBubble({Key? key, required this.emotionText,required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: 150,
        child: Material(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kBubbleRudias),
              topRight: Radius.circular(kBubbleRudias),
              bottomLeft: Radius.circular(kBubbleRudias),
              bottomRight: Radius.circular(kBubbleRudias)),
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$emotionText *** $date \n',
              textAlign: TextAlign.center,

              style: TextStyle(
                fontSize: 20
              ),
            ),
          ),
        ),
      ),
    );
  }
}
