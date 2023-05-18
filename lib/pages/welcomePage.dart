import 'package:flutter/material.dart';
import 'package:shad_baman/component/RoundedContainer.dart';
import 'package:shad_baman/component/RoundedTextButton.dart';
import 'package:shad_baman/pages/login_screen.dart';
import 'package:shad_baman/pages/registrition_page.dart';

class WelcomePage extends StatelessWidget {
  static const String id='welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RoundedContainer(icon: Icons.person),
          SizedBox(
            height: 100,
          ),
          RoundedTextButton(
            text: 'راجستر نمودن',
            onPress: () {
 Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()));
            },
          ),
          SizedBox(
            height: 5,
          ),
          RoundedTextButton(
            text: 'ورود به سیستم',
            onPress: () {
Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
