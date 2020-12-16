import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';
import 'package:qvins/MyModel.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';
import 'package:qvins/screens/main/main_screen.dart';

class widgetMainScreenSercheSearchEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyModel>(
      builder: (ctx, numer, child) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: getProportionateScreenWidth(344),
                margin: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(24)),
                child: TextFormField(
                  //initialValue: 'abc',
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search, color: Color(0xffBABABA)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffBABABA),
                    )),
                    hintText: 'Найти нужное мероприятие',
                    hintStyle: TextStyle(color: Color(0xffBABABA)),
                    // prefix: Text('Prefix'),
                    // suffix: Text('Suffix'),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffBABABA),
                    )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffBABABA),
                    )),
                  ),
                ),
              ),
              Container(
                width: getProportionateScreenWidth(344),
                child: EventsItem(
                  'assets/images/img/Kino_03.jpg',
                  'Фильм “Жених”',
                  'Кино',
                  '12 июня 2021 года Макс Корж приедет в город Екатеринбург, чтобы исполнить вместе с тысячами фанатами свои хиты! Большой сольный концерт состоится на современной площадке Газпром Арена. Макс Корж всего за несколько лет стал популярнейшим исполнителем не только в Беларуси, но и в России. Музыкант стал в ном..',
                ),
              ),
              Container(
                width: getProportionateScreenWidth(344),
                child: EventsItem(
                  'assets/images/img/Kino_02.jpg',
                  'Концерт “Макса Коржа”',
                  'Концерт',
                  '12 июня 2021 года Макс Корж приедет в город Екатеринбург, чтобы исполнить вместе с тысячами фанатами свои хиты! Большой сольный концерт состоится на современной площадке Газпром Арена. Макс Корж всего за несколько лет стал популярнейшим исполнителем не только в Беларуси, но и в России. Музыкант стал в ном..',
                ),
              ),
              Container(
                width: getProportionateScreenWidth(344),
                child: EventsItem(
                  'assets/images/img/Kino_01.jpg',
                  'Фильм “Жених”',
                  'Кино',
                  '12 июня 2021 года Макс Корж приедет в город Екатеринбург, чтобы исполнить вместе с тысячами фанатами свои хиты! Большой сольный концерт состоится на современной площадке Газпром Арена. Макс Корж всего за несколько лет стал популярнейшим исполнителем не только в Беларуси, но и в России. Музыкант стал в ном..',
                ),
              ),
            ],
          ),
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
    final model = Provider.of<MyModel>(context);
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
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.75), //14.0,
                          color: const Color(0xFFA9A9A9),
                        ),
                      )),
                ),
                //Button next
                Container(
                  width: getProportionateScreenWidth(311),
                  height: getProportionateScreenHeight(41),
                  margin:
                      EdgeInsets.only(top: getProportionateScreenHeight(10)),
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      print('!!!Подробнее!!!');
                      model.selectedIndex = 0;
                      model.numBar = 3;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              SettingsSearchPeople: 3,
                              selectedIndex: 0,
                            ),
                          ));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment(-1.0, 5.49),
                          colors: [
                            const Color(0xFFFD4F6A),
                            const Color(0xFFFDA34F)
                          ],
                        ),
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: getProportionateScreenWidth(311),
                          minHeight: getProportionateScreenHeight(41),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Подробнее',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(2), //16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),

                //Button next
                Container(
                  width: getProportionateScreenWidth(311),
                  height: getProportionateScreenHeight(41),
                  margin:
                      EdgeInsets.only(top: getProportionateScreenHeight(10)),
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      print('!!!Вступить в общий чат!!!');
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xffFD4F6A)),
                        borderRadius: BorderRadius.circular(5.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: Colors.white,
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: getProportionateScreenWidth(311),
                          minHeight: getProportionateScreenHeight(41),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Вступить в общий чат',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(2), //16.0,
                            color: Color(0xffFD4F6A),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
