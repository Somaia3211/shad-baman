import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shad_baman/component/RoundedContainer.dart';
import 'package:shad_baman/component/customField.dart';
import 'package:shad_baman/component/fieldTitle.dart';
import 'package:shad_baman/constant.dart';
import 'package:shad_baman/pages/startPage.dart';
import 'package:shad_baman/services/auth_service.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  bool showSpinner=false, errorOcurred=false;
  String errorMessage='';

  @override
  Widget build(BuildContext context) {
    //isKeboardVisible=KeyboardVisibilityProvider.isKeyboardVisible(context) ;
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    Color primary = const  Color(0XFF347850);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Column(
          children: [
            RoundedContainer(icon: Icons.person,),
            Container(
              margin: EdgeInsets.only(
                  top: screenHeight / 20, bottom: screenHeight / 100),
              child: Text(
                "ورود به سیستم",
                style: TextStyle(
                  fontSize: screenWidth / 18,
                ),
              ),
            ),
            fieldTitle("email"),
            customField(
                TextFormField(
                  controller: _emailController,
                  maxLines: 1,
                  enableSuggestions: false,
                  autocorrect: false,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      hintText: "ایمیل خویش را وارد کنید",
                      contentPadding:
                      EdgeInsets.symmetric(vertical: screenHeight / 60),
                      border: InputBorder.none),
                  validator: (email) {
                    return email != null && EmailValidator.validate(email)
                        ? null
                        : 'لطفا ایمیل درست وارد کنید ';
                  },
                ),
                _formKey),
            SizedBox(
              height: 30,
            ),
            fieldTitle("password"),
            customField(
                TextFormField(
                  controller: _passController,
                  maxLines: 1,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      hintText: "رمز خویش را وارد کنید",
                      contentPadding:
                      EdgeInsets.symmetric(vertical: screenHeight / 60),
                      border: InputBorder.none),
                  validator: (password) {
                    return password != null && password.length > 5
                        ? null
                        : 'the password should be at least 6 charecters';
                  },
                ),
                _formKey1),
            Column(
              children: [
                Visibility(
                  visible: errorOcurred,
                  child: Text(errorMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0XFFEEF444C),
                        fontSize: 16
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: primary),
                    height: 60,
                    width: screenWidth,
                    child: TextButton(
                      onPressed: () async{
                        try{
                          setState(() {
                            errorOcurred=false;
                            showSpinner=true;
                          });
                          if (_formKey.currentState!.validate() && _formKey1.currentState!.validate()) {
                            await AuthService().signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passController.text).then((value){
                              Navigator.pop(context);
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>StartPage()));
                            });
                            setState(() {
                              showSpinner=false;
                            });
                          }
                        }catch(e){
                          print('Erroe ${e.toString()}');
                          setState(() {
                            showSpinner=false;
                            errorOcurred=true;
                            errorMessage=e.toString().split('] ')[1];
                          });

                        }


                      },
                      child: Text(
                        "ورود",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

