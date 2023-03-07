import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shad_baman/pages/question_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("خوش آمدید")),
          backgroundColor: const Color(0xffeef444c),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              "برای ادامه به سوالات پاسخ دهید",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuestionPage()));
                },
                child: const Text(
                  "ادامه",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
          ],
        ),
      ),
    );
  }
}
