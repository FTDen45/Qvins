import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';
import 'package:qvins/screens/myscreen/review_add_screen.dart';

import 'package:provider/provider.dart';
import 'package:qvins/MyModel.dart';

import 'package:qvins/widgets/widgetProfileUserEdit.dart';
import 'package:qvins/screens/main/main_screen.dart';

class reviewsShowBottomSheet extends StatelessWidget {
  reviewsShowBottomSheet({
    this.user = false,
    this.showBottom,
  });
  bool user;
  Function showBottom;
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyModel>(context);
    return Container(
      width: getProportionateScreenWidth(375),
      height: user
          ? getProportionateScreenHeight(360)
          : getProportionateScreenHeight(692),
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(15),
        right: getProportionateScreenWidth(15),
        //top: getProportionateScreenHeight(56),
        top: getProportionateScreenHeight(16),
      ),
      child: Column(
        children: [
          user
              ? Container()
              : Center(
                  child: SizedBox(
                    width: getProportionateScreenWidth(95),
                    height: getProportionateScreenHeight(4),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(36),
                      ),
                    ),
                  ),
                ),
          Padding(
            padding: user
                ? EdgeInsets.only(
                    //top: getProportionateScreenHeight(16),
                    bottom: getProportionateScreenHeight(16))
                : EdgeInsets.only(
                    bottom: getProportionateScreenHeight(16),
                    top: getProportionateScreenHeight(36),
                  ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  user ? 'Отзывы (23)' : 'Отзывы',
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: ResponsiveFlutter.of(context).fontSize(3), //24.0,
                    color: Color(0xFF222222),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    print('Перейти в профиль');
                    if (user) {
                      showBottom(context);
                    } else {
                      model.selectedIndex = 4;
                      model.numBar = 6;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              SettingsSearchPeople: 6,
                              selectedIndex: 4,
                            ),
                          ));
                    }
                  },
                  child: Text(
                    user ? 'Посмотреть все отзывы' : 'Перейти в профиль',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(1.5), //12.0,
                      color: const Color(0xFFFD4F6A),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getProportionateScreenHeight(25),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                btnRaiting(active: true, star: false, text: 'Все'),
                btnRaiting(active: false, star: true, text: '4.0'),
                btnRaiting(active: false, star: true, text: '3.0'),
                btnRaiting(active: false, star: true, text: '2.0'),
                btnRaiting(active: false, star: true, text: '1.0'),

                //_btnBoyGirlAll('2.0', false, 2),
                //_btnBoyGirlAll('1.0', false, 2),
              ],
            ),
          ),

          //Button next
          user
              ? Container()
              : Container(
                  width: getProportionateScreenWidth(344),
                  height: getProportionateScreenHeight(41),
                  margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(10),
                    bottom: getProportionateScreenHeight(10),
                  ),
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      print('!!!Оставить отзыв!!!');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReviewAddScreen()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: Color(0xff674FFD),
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                            maxWidth: getProportionateScreenWidth(344),
                            minHeight:
                                MediaQuery.of(context).size.height * 0.043),
                        alignment: Alignment.center,
                        child: Text(
                          'Оставить отзыв',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(1.75), //14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
          user
              ? Padding(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenWidth(16)),
                  child: Column(
                    children: [
                      reviewsItem(
                        imgpath: 'assets/images/img/PeopleAvatar.png',
                        fio: 'Ислам Кожамниязов',
                        score: '4.5',
                        desc:
                            'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                      ),
                      reviewsItem(
                        imgpath: 'assets/images/img/PeopleAvatar.png',
                        fio: 'Ислам Кожамниязов',
                        score: '4.5',
                        desc:
                            'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                      ),
                      reviewsItem(
                        imgpath: 'assets/images/img/PeopleAvatar.png',
                        fio: 'Ислам Кожамниязов',
                        score: '4.5',
                        desc:
                            'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                      ),
                    ],
                  ),
                )
              : Container(
                  height: getProportionateScreenHeight(495),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                        reviewsItem(
                          imgpath: 'assets/images/img/PeopleAvatar.png',
                          fio: 'Ислам Кожамниязов',
                          score: '4.5',
                          desc:
                              'Хочу отметить классное чувство юмора,  отлично погуляли! Буду ждать встречи еще',
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

class reviewsItem extends StatelessWidget {
  reviewsItem({this.imgpath, this.fio, this.score, this.desc});
  final String imgpath;
  final String fio;
  final String score;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(16)),
      width: getProportionateScreenWidth(344),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print('right avatar');
            },
            child: Padding(
              padding: EdgeInsets.only(right: getProportionateScreenWidth(8)),
              child: CircleAvatar(
                radius: getProportionateScreenWidth(16),
                //backgroundColor: Colors.transparent,
                child: Image.asset(
                  imgpath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    fio,
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: getProportionateScreenWidth(16.0),
                      color: const Color(0xFF222222),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(width: getProportionateScreenWidth(5)),
                  Icon(
                    Icons.star,
                    size: getProportionateScreenWidth(8),
                    color: Color(0xffFFB800),
                  ),
                  Container(width: getProportionateScreenWidth(5)),
                  Text(
                    score,
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: getProportionateScreenWidth(12.0),
                      color: const Color(0xFFBABABA),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: getProportionateScreenWidth(304),
                child: Text(
                  desc,
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: getProportionateScreenWidth(14.0),
                    color: const Color(0xFFBABABA),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class btnRaiting extends StatefulWidget {
  bool active = false;
  bool star = false;
  String text = '';

  btnRaiting({this.active, this.star, this.text});

  @override
  _btnRaitingState createState() => _btnRaitingState();
}

class _btnRaitingState extends State<btnRaiting> {
  void chooseRaiting() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final model = Provider.of<MyModel>(context, listen: false);
    return Container(
      width: getProportionateScreenWidth(78),
      height: getProportionateScreenHeight(25),
      margin: EdgeInsets.only(right: getProportionateScreenHeight(8)),
      child: RaisedButton(
        onPressed: () {},
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: widget.active
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Color(0xffFD4F6A),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffBABABA),
                    width: 1,
                  ),
                ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: getProportionateScreenWidth(78),
              minHeight: getProportionateScreenHeight(25),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.star
                    ? Icon(
                        Icons.star,
                        size: getProportionateScreenWidth(11),
                        color: Color(0xffFFB800),
                      )
                    : Text(''),
                Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: widget.active
                      ? TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.75), //14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )
                      : TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.75), //18.0,
                          color: const Color(0xFFBABABA),
                          fontWeight: FontWeight.w300,
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
