
import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';



class Goals extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.topCenter,
      child: Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title:Text('بررسی اهداف')
      ),
              body: ListView.builder(
                itemCount: 1,
                  itemBuilder: (builder,context){

                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                   width: double.infinity,
                   child:  Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text('هدف گذاری چیست و چرا باید هدفگذاری کنیم؟',style: TextStyle(fontSize: 30,
                       fontWeight: FontWeight.bold),),
                       Text(
                           'هدفگذاری را اینگونه تعریف میکنید: هدفگذاری فرآیندی است که اگر به درستی انجام شود، پیشرفت فرد و یا گروه را در رسیدن به اهداف در پی دارد. به عبارت دیگر هدفگذاری در جنبههای مختلف زندگی، باعث میشود تا شما انگیزه لازم برای تلاش و حرکت داشته باشید. البته اگر به درستی تعیین شود.'
                       ,style: kTextStlyle,),
                           Text(' جنبه های مهم هدف گذاری',style: kSubjectTextStyle,),
                           Text(
                           'در 6 جنبه زیر، اهدافی مشخص و قابل دستیابی تعیین کنید:'
                           ' کسب و کار،'
                           'علایق فردی،'
                           ' تندرستی و سلامتی،'
                           ' معنویت و انسانیت،'
                           ' جایگاه اجتماعی،'
                           ' و از همه مهمتر خانواده.'
                           'اگر بتوانید در تمام جنبه های زندگی هدفگذاری کنید، بدون شک زندگی شاد و همراه با آرامشی را تجربه خواهید کرد.'
                           ,style: kTextStlyle
                       ),
                       Text('اشتباهات رایج در انتخاب هدف چیست ؟',style: kSubjectTextStyle,),
                       Text('تعیین هدف بر اساس آرزوها',style: kTextStlyle,),
                       Text('حرکت و اقدام بدون هدف',style: kTextStlyle,),
                       Text('فواید داشتن هدف در زندگی چیست ؟',style: kSubjectTextStyle,),
                       Text('سریعتر به مقصد میرسید ',style: kTextStlyle,),
                       Text('یافتن راه درست',style: kTextStlyle,),
                       Text('با دانستن مسیر و جهت حرکت، به راحتی میتوانید راههای مختلف را بررسی کرده و بهترین راه را انتخاب کنید.',style: kTextStlyle,),
                     ],
                   ),
                  ),
                );
              }),
      ),
    );}
}
