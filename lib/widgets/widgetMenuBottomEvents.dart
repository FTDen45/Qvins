import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class widgetMenuBottomEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(16),
        right: getProportionateScreenWidth(16),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: getProportionateScreenHeight(16),
                bottom: getProportionateScreenHeight(12),
              ),
              child: Text(
                'Афиша на неделю',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: ResponsiveFlutter.of(context).fontSize(2.5), //20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: getProportionateScreenHeight(179),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  EventsWeekItem(
                    'assets/images/img/plakat_01.jpg',
                    0,
                  ),
                  EventsWeekItem(
                    'assets/images/img/plakat_02.jpg',
                    1,
                  ),
                  EventsWeekItem(
                    'assets/images/img/plakat_01.jpg',
                    2,
                  ),

                  //_btnBoyGirlAll('2.0', false, 2),
                  //_btnBoyGirlAll('1.0', false, 2),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getProportionateScreenHeight(16),
                bottom: getProportionateScreenHeight(12),
              ),
              child: Text(
                'Куда пойдем сегодня?',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: ResponsiveFlutter.of(context).fontSize(2.5), //20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: getProportionateScreenHeight(35),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  btnRaiting(active: true, text: 'Все'),
                  btnRaiting(active: false, text: 'Концерты'),
                  btnRaiting(active: false, text: 'Кино'),
                  btnRaiting(active: false, text: 'Театр'),
                  btnRaiting(active: false, text: 'Мастер-классы'),

                  //_btnBoyGirlAll('2.0', false, 2),
                  //_btnBoyGirlAll('1.0', false, 2),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getProportionateScreenHeight(16),
                bottom: getProportionateScreenHeight(12),
              ),
              child: Text(
                'Какой жанр предпочитаете?',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: ResponsiveFlutter.of(context).fontSize(2.5), //20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: getProportionateScreenHeight(35),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  btnRaiting(active: true, text: 'Комедия'),
                  btnRaiting(active: false, text: 'Мелодрама'),
                  btnRaiting(active: false, text: 'Все'),
                  btnRaiting(active: false, text: 'Боевик'),
                  btnRaiting(active: false, text: 'Ужастик'),

                  //_btnBoyGirlAll('2.0', false, 2),
                  //_btnBoyGirlAll('1.0', false, 2),
                ],
              ),
            ),
            EventsItem(
              'assets/images/img/Kino_02.jpg',
              'Концерт “Макса Коржа”',
              'Концерт',
              '12 июня 2021 года Макс Корж приедет в город Екатеринбург, чтобы исполнить вместе с тысячами фанатами свои хиты! Большой сольный концерт состоится на современной площадке Газпром Арена. Макс Корж всего за несколько лет стал популярнейшим исполнителем не только в Беларуси, но и в России. Музыкант стал в ном..',
            ),
            EventsItem(
              'assets/images/img/Kino_01.jpg',
              'Фильм “Жених”',
              'Кино',
              '12 июня 2021 года Макс Корж приедет в город Екатеринбург, чтобы исполнить вместе с тысячами фанатами свои хиты! Большой сольный концерт состоится на современной площадке Газпром Арена. Макс Корж всего за несколько лет стал популярнейшим исполнителем не только в Беларуси, но и в России. Музыкант стал в ном..',
            ),
          ],
        ),
      ),
    );
  }
}

class EventsItem extends StatelessWidget {
  EventsItem(
    this.img,
    this.name,
    this.ganar,
    this.desc,
  );
  String img;
  String name;
  String ganar;
  String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(16),
        bottom: getProportionateScreenHeight(8),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Image.asset(img,
                width: getProportionateScreenWidth(344), fit: BoxFit.fill),
          ),
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(16)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:
                            ResponsiveFlutter.of(context).fontSize(2), //16.0,
                        color: Colors.grey[850],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(11),
                        right: getProportionateScreenWidth(11),
                        top: getProportionateScreenHeight(2),
                        bottom: getProportionateScreenHeight(2),
                      ),
                      height: getProportionateScreenHeight(17.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.0),
                        color: const Color(0xFF674FFD),
                      ),
                      child: Text(
                        ganar,
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.25), //10.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(16)),
                  child: SizedBox(
                      width: getProportionateScreenWidth(312),
                      child: Text(
                        desc,
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
                          color: const Color(0xFFA9A9A9),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EventsWeekItem extends StatelessWidget {
  EventsWeekItem(this.img, this.tap);
  String img;
  int tap;
  void tapEvents(int event) {
    print('Events $event!!!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: getProportionateScreenWidth(8),
      ),
      child: GestureDetector(
        onTap: () {
          tapEvents(tap);
        },
        child: Image.asset(
          img,
          width: getProportionateScreenWidth(162),
          height: getProportionateScreenHeight(179),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class btnRaiting extends StatelessWidget {
  bool active = false;
  String text = '';

  btnRaiting({this.active, this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Куда пойдем');
        active = !active;
      },
      child: Container(
        //width: getProportionateScreenWidth(78),
        height: getProportionateScreenHeight(35),
        margin: EdgeInsets.only(right: getProportionateScreenHeight(8)),
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(16),
          right: getProportionateScreenWidth(16),
          top: getProportionateScreenHeight(8),
          bottom: getProportionateScreenHeight(8),
        ),
        decoration: active
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: Color(0xffFD4F6A),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: Color(0xffF4F4F4),
                border: Border.all(
                  color: Color(0xffBABABA),
                  width: 1,
                ),
              ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
            color: active ? Color(0xffffffff) : Color(0xFF030303),
          ),
        ),
      ),
    );
  }
}
