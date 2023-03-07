

import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';

class ThanksGiving extends StatelessWidget {
  const ThanksGiving({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('th'),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 1,
              itemBuilder: (builder,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Text('شکرگزاری چیست؟\n'
                    ' شکرگزاری چیز غریبی نیست. همه میدانیم که این کار یعنی تشکر از خدا، کائنات یا هر نیروی دیگری که هر فردی ممکن است بنا به کیش و آئین خودش به آن معتقد باشد. سپاسگزاری حتی میتواند به خودمان هم ربط پیدا کند؛ به کارهایی که برای خودمان انجام میدهیم یا به روند رو به رشدی که در زندگی خویش طی میکنیم. بله! ما حتی میتوانیم بارها و بارها'
                    ' از خودمان تشکر کنیم بابت فردی که هستیم و آنکه به آن تبدیل شدهایم'
                    ' .شکرگزاری در قرآن'
           ' قبل از هرچیز به شکرگزاری در دین اسلام و کتاب قرآنبپردازیم که شناخت و آشنایی بیشتری نسبت به آن داریم. اسلام و قرآن تأکید بسیار زیادی بر شکر و ثنا دارند. اسلام میخواهد که انسان در هر شرایطی به توانایی سپاسگزاری دست پیدا کند و مهمترین چیزی که بر آن اصرار دارد این است که اتفاقا در شرایط سخت، این روحیه را داشته باشیم.'
           ' بزرگان این دین معتقدند که شکر در زمانی که اتفاقات خوبی برای ما رقم خورده، کار سادهای است؛ اما اگر بتوانیم در شرایط ناهموار و ناراحتکننده هم شکر بهجا بیاوریم، این معنا را میدهد که به خدای عالم، ایمان مطلق داریم و به این باور رسیدهایم که این واقعه حتما به خیر و صلاح من است و به رشد من یا اطرافیانم کمک خواهد کرد.'
           ' از دید دین اسلام، بُعد مثبت دیگر سپاسگزاری در شرایط بد این است که از خدا به این دلیل تشکر میکنیم که جلوی بلاهای مختلف و بدتری که میتوانست بر سر ما بیاید گرفته و نگذاشته که بیش از این دچار سختی و فشار شویم.'
           ' وقتی عمیقتر به این نکات فکر کنیم میبینیم که اگر آنقدر توانمند و پذیرا شویم که حتی در سختترین شرایط هم سپاسگزار باشیم، قطعاً به عمق بیشتری در شخصیتمان دست پیدا میکنیم. قطعاً صبر و استقامت بیشتری در مواجهه با تمام ابعاد زندگی پیدا میکنیم و… .'
           ' زندگی ما نمیتواند خالی از اتفاقات بد باشد؛ این اجتنابناپذیر است. اما ما میتوانیم روحیهای را در خودمان تقویت کنیم که برای هر اتفاق بدی آماده باشیم و به مرحلهای از آرامش برسیم که حتی در بدترین وضعیتها بهترین تصمیمات را بگیریم.'
           ' در ادامه، به چند آیه از قرآن اشاره میکنم که مستقیماً به آثار شکر و ثنا اشاره کردهاند:'
                '«و ما به لقمان حکمت دادیم که شکر خدا را به جاى آور و هرکس شکر کند، همانا براى خودش شکر کرده.»'
           ' «مرا یاد کنید تا شما را یاد کنم و مرا سپاس گویید و ناسپاس نباشید.»'
           ' «اى کسانى که ایمان آورده‏اید! از نعمتهاى پاکیزه‏اى که روزى شما ساخته‏ایم، بخورید و سپاس خدا را بگزارید؛ اگر تنها او را مى‏پرستید.»'



                ,style:kTextStlyle),
              ),
            );
          })
          ),
        ),
    );


  }
}