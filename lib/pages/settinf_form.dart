import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';

class SettingForm extends StatefulWidget {
  const SettingForm({Key? key}) : super(key: key);

  @override
  _SettingFormState createState() => _SettingFormState();
}

class _SettingFormState extends State<SettingForm> {
  final formKey=GlobalKey<FormState>();
  String currentEmotion='';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Text('Update your emotion'),
          SizedBox(height: 20,),
          TextFormField(
            decoration: inputDecoration,
            validator: (val)=> val!.isEmpty?'please enter an emotion':null,
            onChanged: (val)=>setState(() {
            currentEmotion=val;
            }),


          ),
          SizedBox(height: 20,),
          TextButton(
            child: Text('Update'),
            onPressed: (){
              print(currentEmotion);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.pink
            ),
          )

        ],
      ),
    );
  }
}
