import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController idController = TextEditingController();
  TextEditingController passController = TextEditingController();
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    bool isKeboardVisible=KeyboardVisibilityProvider.isKeyboardVisible(context) ;
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    Color primary = const Color(0XFFEEF444C);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
         isKeboardVisible?SizedBox(height: screenHeight/16,): Container(
            //margin: EdgeInsets.only(bottom: 10),
            height: screenHeight / 2.5,
            width: screenWidth,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(70),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: screenWidth / 5,
              ),
            ),
          ),
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
          fieldTitle("ID"),
          customField("آی دی خویش را وارد نمایید", idController,false),
          SizedBox(
            height: 20,
          ),
          fieldTitle("password"),
          customField("رمز خویش را وارد نمایید", passController,true),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)) ,
                color: primary
              ),
              height: 60,
              width: screenWidth,
              
              child: TextButton(

                onPressed: () {},
                child: Text(
                "ورود",
                  style: TextStyle(color: Colors.white),
                ),
                




              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget fieldTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(bottom: 12),
        child: Text(
          title,
          style: TextStyle(
            fontSize: screenWidth / 26,
          ),
        ),
      ),
    );
  }

  Widget customField(String hint, TextEditingController controller,bool obscure) {
    return Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.symmetric(horizontal: screenWidth / 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenWidth,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(3, 3)),
                  ]),
              child: Row(
                children: [
                  Container(
                    width: screenWidth / 6,
                    child: Icon(
                      Icons.person,
                      color: Color(0XFFEEF444C),
                      size: screenWidth / 15,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: screenWidth / 12),
                      child: TextFormField(
                        controller: controller,
                        maxLines: 1,
                        obscureText: obscure,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            hintText: hint,

                            contentPadding: EdgeInsets.symmetric(
                                vertical: screenHeight / 60),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
