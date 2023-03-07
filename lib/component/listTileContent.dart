import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final  List<String> text;
  final List<bool> value;
  final ValueChanged<bool?>? onChanged;



  Content({required this.text,required this.value,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: text.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pinkAccent,
                      ),
                      child: Column(
                        children: [
                          CheckboxListTile(
                            value: value[index],
                            onChanged:onChanged,
                            title: Text(
                              text[index],
                              style: TextStyle(fontSize: 35),
                            ),
                          ),
                        ],
                      )),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.pinkAccent
            ),
            child: Column(

              children: [
                Text('موارد دیگر',style: TextStyle(
                    fontSize: 20
                ),),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'اینجا بنویسید',
                    hintMaxLines: 2,
                    errorMaxLines: 3,

                  ),
                ),
              ],
            ),
          ),
        ),


      ],
    );
  }
}
