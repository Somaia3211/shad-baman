
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:shad_baman/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shad_baman/pages/firstPage.dart';
import 'package:shad_baman/pages/login_screen.dart';
import 'package:shad_baman/pages/question_page.dart';
import 'package:shad_baman/pages/recomindation.dart';
import 'package:shad_baman/pages/registrition_page.dart';
import 'package:shad_baman/pages/welcomePage.dart';
import 'package:shad_baman/services/auth_service.dart';



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
    return StreamBuilder<User?>(
      stream: AuthService().authStateChanges,
      builder: (context, snapshot) {
        return MaterialApp(
          routes: {
            WelcomePage.id:(context)=>WelcomePage(),
          },

          debugShowCheckedModeBanner: false,

          home:First(),
          // First(),
         // KeyboardVisibilityProvider(child: LoginScreen()),
        );
      }
    );
  }
  }

