import 'package:flutter/material.dart';
import 'package:shad_baman/pages/goals.dart';
import 'package:shad_baman/pages/smile.dart';
import 'package:shad_baman/pages/thanksGiving.dart';
import 'package:shad_baman/pages/walking.dart';
import 'package:shad_baman/pages/water.dart';
import 'package:shad_baman/pages/youga.dart';

class Recomindation extends StatefulWidget {
  const Recomindation({Key? key}) : super(key: key);

  @override
  _RecomindationState createState() => _RecomindationState();
}

class _RecomindationState extends State<Recomindation> {
  List<String> recomendation = [
    'شکرگزاری',
    'بررسی اهداف',
    'یوگا',
    'آب نوشیدن',
    'لبخند بزنید',
    'قدم زدن',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: recomendation.length,
                itemBuilder: (builder, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pinkAccent,
                      ),
                      height: 140,
                      width: double.infinity,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              if (recomendation[index] == 'شکرگزاری') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ThanksGiving()));
                              } else if (recomendation[index] ==
                                  'بررسی اهداف') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Goals()));
                              } else if (recomendation[index] == 'یوگا') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Youga()));
                              } else if (recomendation[index] == 'آب نوشیدن') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Water()));
                              } else if (recomendation[index] ==
                                  'لبخند بزنید') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Smile()));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Walk()));
                              }
                            });
                          },
                          child: Text(
                            recomendation[index],
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
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
