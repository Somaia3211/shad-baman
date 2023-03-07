import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:shad_baman/firebase_options.dart';
import 'package:shad_baman/pages/Welcome_page.dart';
import 'package:shad_baman/pages/login_screen.dart';
import 'package:shad_baman/pages/recomindation.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Recomindation(),
      //WelcomePage(),
      //KeyboardVisibilityProvider(child: LoginScreen()),
    );
  }
  }

