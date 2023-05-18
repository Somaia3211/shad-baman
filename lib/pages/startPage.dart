import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shad_baman/pages/question_page.dart';
import 'package:shad_baman/services/auth_service.dart';


class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("خوش آمدید")),
          backgroundColor: const  Color(0XFF86D4AF),
          actions: [
            IconButton(onPressed: (){
              Navigator.pop(context);
              AuthService().signOut();
            }, icon: Icon(Icons.logout))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
                  "برای ادامه به سوالات پاسخ دهید",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuestionPage()));
                  },
                  child: Center(
                    child: const Text(
                      "ادامه",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    primary: Colors.white,
                    backgroundColor: Color(0XFF347850)
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
