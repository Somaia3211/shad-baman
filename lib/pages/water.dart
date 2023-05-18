import 'package:flutter/material.dart';
import 'package:shad_baman/constant.dart';
import 'package:shad_baman/pages/pageContent.dart';

class Water extends StatelessWidget {
  const Water({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkGreenColor,
        title: Text('water'),
      ),
      body: PageContent(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/water.jpg'),
          Text(
            '  فواید نوشیدن آب کافی',
            style: kSubjectTextStyle,
          ),
          Text(
            'به تولید بزاق کمک می کند',
            style: kTextStlyle,
          ),
          Text(
            'دمای بدن را تنظیم می کند',
            style: kTextStlyle,
          ),
          Text(
            'فقرات محافظت می کند',
            style: kTextStlyle,
          ),
          Text(
            'از یبوست جلوگیری می کند',
            style: kTextStlyle,
          ),
          Text(
            'باعث کاهش وزن می شود',
            style: kTextStlyle,
          ),
          Text(
            'گردش اکسیژن خون را بهبود می بخشد',
            style: kTextStlyle,
          ),
          Text(
            'به مبارزه کردن با بیماری ها کمک می کند',
            style: kTextStlyle,
          ),
          Text('انرژی بدن را بالا می برد', style: kTextStlyle),
          Text('به بهبود خلق و خو کمک می کند', style: kTextStlyle),
          Text('باعث شفافیت و درخشانی پوست می شود', style: kTextStlyle),
        ],
      )),
    );
  }
}
