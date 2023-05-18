import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';
import 'package:shad_baman/pages/pageContent.dart';

class Walk extends StatelessWidget {
  const Walk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkGreenColor,
        title: Text('walking'),
      ),
      body: PageContent(child: Column(
        children: [
          Image.asset('assets/walk.jpg'),
          Text(' فواید شگفت انگیز قدم زدن',style: kSubjectTextStyle,),
          Text('پیاده روی باعث بهبود عملکرد مغز می شود',style: kTextStlyle,),
          Text('قدم زدن باعث تقویت استخوان بندی میشود',style: kTextStlyle,),
          Text('بهبود خلق و خوی شما',style: kTextStlyle,),
          Text('. پیاده روی باعث بهبود گردش خون می شود ',style: kTextStlyle,),
          Text('باعث تقویت عضلات ساق پا میشود',style: kTextStlyle,),
          Text('حافظه را تقویت می کند',style: kTextStlyle,),
          Text('باعث کاهش درد در شما میشود',style: kTextStlyle,),
          Text('تقویت سطح قند خون ',style: kTextStlyle,),
          Text('بالا بردن ایمنی شما',style: kTextStlyle,),
          Text(' باعث میشود بهتر بخوابید',style: kTextStlyle,),
        ],
      ),),

    );
  }
}
