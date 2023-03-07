import 'package:flutter/material.dart';

class PageContent extends StatelessWidget{
  final Widget? child;
  const PageContent({
    Key? key,this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (builder,context){
          return Container(
              width: double.infinity,
              child:child
          );
        });
  }
}