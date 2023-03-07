import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';
import 'package:shad_baman/pages/pageContent.dart';

class Smile extends StatelessWidget {
  const Smile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('لبخند بزنید'),
      ),
      body: PageContent(child: Column(
        children: [
          Image.asset('assets/10smile.jpg'),
          Text('لبخند زدن به شما کمک می کند عمر طولانی تری داشته باشید',style: kTextStlyle,),
          Text('لبخند زدن استرس را از بین می برد.',style: kTextStlyle),
          Text('لبخند زدن مسری است',style: kTextStlyle),
          Text('لبخند زدن سیستم ایمنی بدن را تقویت می کند',style: kTextStlyle),
          Text('لبخند زدن ممکن است فشار خون را پایین بیاورد.',style: kTextStlyle),
          Text(' لبخند زدن درد را کاهش می دهد.',style: kTextStlyle),
          Text('لبخند زدن نشان دهنده موفقیت است.',style: kTextStlyle),
          Text('لبخند زدن به شما کمک می کند مثبت اندیش باشید.',style: kTextStlyle),
          Text('لبخند زدن شما را جذاب می کند.',style: kTextStlyle),
          Text('لبخند زدن روحیه را بالا میبرد.',style: kTextStlyle),

        ],
      ),),

    );
  }
}
