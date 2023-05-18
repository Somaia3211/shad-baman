import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';
import 'package:shad_baman/pages/pageContent.dart';

class Youga extends StatelessWidget {
  const Youga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkGreenColor,
        title: Text('Yoga'),
      ),
      body: PageContent(child: Column(
        children: [
          Image.asset('assets/yoga.jpg'),
          Text('یوگا تمرین حرکتی ذهنی بدن می باشد. حرکات این ورزش هر دو عامل جنبش و کنترل تنفس و تمرکز را در بر دارد. ',
          style: kTextStlyle,),
          Text('فواید یوگا به شرح زیر است',style: kTextStlyle,),
          Text(' \nکاهش استرس و اضطراب'
         '\n کاهش نشانه های افسردگی'
          '\nتعادل و انعطاف پذیری بهتر'
         ' بهبود وضعیت خواب \n'
          '\nافزایش ایمنی به علت تحریک سیستم لنفاوی'
         '\n از بین بردن سموم و فلزات سنگین'
         '\nافزایش قدرت و استقامت'
          '\nبهبود جریان خون'
         '\n عملکرد بهتر گوارشی، از جمله کاهش علائم IBS'
             '\n کاهش علائم مربوط به بارداری و افسردگی پس از زایمان'
              '\nدرد مزمن ، از جمله مواردی که به علت مشکلات عضلانی مانند کمردرد یا سردرد مکرر ایجاد می شود .'
             ' بهبود وضعیت بدنی و کاهش علائم اختلال شخصیتی\n'
              ,style: kTextStlyle,),
          Text('چه زمانی برای انجام تمرینات مناسب است؟',style: kSubjectTextStyle,),
          Text('انجام تمرینات یوگا در صبحگاه سبب می شود تا مقدار انرژی فرد در طول روز بالا باشد اما انجام تمرینات این ورزش می تواند پیش از ظهر و یا در  نیز انجام شود. اما انجام تمرینات در صبح می تواند یک روش بسیار جالب برای شاداب نمودن ذهن و فراغت از استرس در طول روز باشد. معمولا مدت زمان انجام تمرینات یوگا در یک جلسه تمرینی ۱ ساعت الی ۱۰۰ دقیقه به طول می انجامد و حتی می توان مدت زمان کمتری را نیز برای انجام تمرینات اختصاص داد، حتی فرد می تواند تنها با انجام ۱۵ دقیقه از فواید بی نظیر و شگفت انگیز تمرینات ورزش یوگا نیز بهرمند شود'
          ,style: kTextStlyle,),

        ],
      ),),

    );
  }
}


