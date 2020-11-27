import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:qvins/widgets/widgetMainScreen.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:provider/provider.dart';

import 'package:qvins/screens/training/training_05_screen.dart';

import 'package:qvins/size_cofige.dart';
import 'package:qvins/constans.dart';
import 'package:qvins/MyModel.dart';

import 'package:qvins/widgets/widgetMenuBottomEvents.dart';
import 'package:qvins/widgets/widgetMenuBottomPeopl.dart';
import 'package:qvins/widgets/reviewsShowBottomSheet.dart';

class MainScreen extends StatefulWidget {
  final int SettingsSearchPeople;
  MainScreen({Key key, this.SettingsSearchPeople})
      : super(
          key: key,
        );

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 2;

  bool meropriatie = false;
  bool people = false;
  bool main = true;
  bool message = false;
  bool profile = false;

  bool messageIndicatorRedDot = true;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showWindow(context) {
    showBottomSheet(
      //showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (builder) {
        return reviewsShowBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _widgetScreensUsers(_selectedIndex, context, optionStyle) {
      List<dynamic> _widgetOptions = [
        Text(
          'Index 1: Business',
          style: optionStyle,
        ),
        Text(
          'Index 2: School',
          style: optionStyle,
        ),
        Text(
          'Index 3: School',
          style: optionStyle,
        ),
        Text(
          'Index 4: School',
          style: optionStyle,
        ),
      ];
      return _widgetOptions.elementAt(_selectedIndex);
    }

    Widget _indexScrin(context, index, i) {
      switch (index) {
        case 0:
          print('Мероприятия');
          return widgetMenuBottomEvents();
          break;
        case 1:
          print('Люди рядом');
          return widgetMenuBottomPeopl();
          break;
        case 2:
          print('Главная');
          if (i == 0) {
            return PagesViewer(
              showWindow: _showWindow,
            );
          } else {
            return _widgetMainScreenSettingsSearchPeople(context);
          }
          break;
        case 3:
          print('Сообщения');
          break;
        case 4:
          print('Профиль');
          break;
        default:
          print('Нижнее меню');
      }
    }

    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar:
          _chooseAppBar(context, _selectedIndex, widget.SettingsSearchPeople),
      //body: _widgetOptions.elementAt(_selectedIndex),
      body: //_widgetScreensUsers(_selectedIndex, context, optionStyle),
          Stack(
        children: [
          Positioned(
            bottom: getProportionateScreenHeight(83),
            top: 0,
            left: 0,
            right: 0,
            child: _indexScrin(context, _selectedIndex,
                widget.SettingsSearchPeople), //_widgetMainScreen(context),
            // Container(
            //   color: Color(0xffff0000),
            //   child: SingleChildScrollView(
            //     child: Column(
            //       children: [
            //         Container(
            //           color: Color(0xfff00000),
            //           height: MediaQuery.of(context).size.height / 2,
            //         ),
            //         Container(
            //           color: Color(0xff0000ff),
            //           height: MediaQuery.of(context).size.height,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ),
          // Positioned(
          //   child: _widgetScreensUsers(_selectedIndex, context, optionStyle),
          // ),
          //_widgetScreensUsers(_selectedIndex, context, optionStyle),
          Positioned(
            bottom: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Color(0xffffffff),
              height: MediaQuery.of(context).size.height * 0.103,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _onItemTapped(0);
                        meropriatie = true;
                        people = false;
                        main = false;
                        message = false;
                        profile = false;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.date_range,
                              color: meropriatie
                                  ? Color(0xffFD4F6A)
                                  : Color(0xffBABABA),
                              size: ResponsiveFlutter.of(context)
                                  .fontSize(3.75), //30.0,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  0.005, //4
                            ),
                            Text(
                              'Мероприятия',
                              style: TextStyle(
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.25), //10,
                                color: meropriatie
                                    ? Color(0xffFD4F6A)
                                    : Color(0xffBABABA),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _onItemTapped(1);
                        meropriatie = false;
                        people = true;
                        main = false;
                        message = false;
                        profile = false;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.location,
                              color: people
                                  ? Color(0xffFD4F6A)
                                  : Color(0xffBABABA),
                              size: ResponsiveFlutter.of(context)
                                  .fontSize(3.75), //30.0,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  0.005, //4
                            ),
                            Text(
                              'Люди рядом',
                              style: TextStyle(
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.25), //10,
                                color: people
                                    ? Color(0xffFD4F6A)
                                    : Color(0xffBABABA),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _onItemTapped(2);
                        meropriatie = false;
                        people = false;
                        main = true;
                        message = false;
                        profile = false;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/img/bg_logo_top/q.svg",
                              width: MediaQuery.of(context).size.width * 0.2,
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                              color:
                                  main ? Color(0xffFD4F6A) : Color(0xffBABABA),
                              fit: BoxFit.fitHeight,
                            ),
                            Container(
                                //height: MediaQuery.of(context).size.height *
                                //    0.005, //4
                                ),
                            Text(
                              'Главная',
                              style: TextStyle(
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.25), //10,
                                color: main
                                    ? Color(0xffFD4F6A)
                                    : Color(0xffBABABA),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _onItemTapped(3);
                        meropriatie = false;
                        people = false;
                        main = false;
                        message = true;
                        profile = false;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Icon(
                                  CupertinoIcons.conversation_bubble,
                                  color: message
                                      ? Color(0xffFD4F6A)
                                      : Color(0xffBABABA),
                                  size: ResponsiveFlutter.of(context)
                                      .fontSize(3.75), //30.0,
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: messageIndicatorRedDot
                                      ? SvgPicture.asset(
                                          "assets/images/img/dot_red.svg",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.027, //10,
                                        )
                                      : SizedBox(),
                                ),
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  0.005, //4
                            ),
                            Text(
                              'Сообщения',
                              style: TextStyle(
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.25), //10,
                                color: message
                                    ? Color(0xffFD4F6A)
                                    : Color(0xffBABABA),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _onItemTapped(4);
                        meropriatie = false;
                        people = false;
                        main = false;
                        message = false;
                        profile = true;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.person,
                              color: profile
                                  ? Color(0xffFD4F6A)
                                  : Color(0xffBABABA),
                              size: ResponsiveFlutter.of(context)
                                  .fontSize(3.75), //30.0,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  0.005, //4
                            ),
                            Text(
                              'Профиль',
                              style: TextStyle(
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.25), //10,
                                color: profile
                                    ? Color(0xffFD4F6A)
                                    : Color(0xffBABABA),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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

enum _appBars {
  _AppBarSettingsSearchPeopl,
}
_chooseAppBar(context, _selectedIndex, _numBar) {
  switch (_selectedIndex) {
    case 0:
      if (_numBar == 0) {
        return AppBar(
          toolbarHeight: MediaQuery.of(context).size.width * 0.16,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffffffff),
          leadingWidth: MediaQuery.of(context).size.width * 0.19,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: SvgPicture.asset(
                  'assets/images/img/shesterna.svg',
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: MediaQuery.of(context).size.width * 0.08,
                  fit: BoxFit.cover,
                  color: Color(0xff674FFD),
                ), //reload.svg
                onPressed: () {
                  print('!!!Reload!!!');
                },
              );
            },
          ),
          title: SvgPicture.asset(
            'assets/images/img/bg_logo_top/q.svg',
            width: MediaQuery.of(context).size.width * 0.16,
            //height: MediaQuery.of(context).size.width * 0.059,
            color: Color(0xffFD4F6A),
            //fit: BoxFit.cover,
          ),
          actions: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.19,
              child: IconButton(
                  padding: const EdgeInsets.all(18.0),
                  //iconSize: 24.0,
                  icon: SvgPicture.asset(
                    'assets/images/img/loop.svg',
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.width * 0.08,
                    fit: BoxFit.cover,
                    //color: Color(0xff),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Filled.png!!!');
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => MainScreen(
                    //         SettingsSearchPeople: 1,
                    //       ),
                    //     ));
                  }
                  //_numBar = 1;

                  ),
            ),
          ], //Filled.svg
        );
      }
      break;
    case 2:
      if (_numBar == 0) {
        return AppBar(
          toolbarHeight: MediaQuery.of(context).size.width * 0.16,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffffffff),
          leadingWidth: MediaQuery.of(context).size.width * 0.19,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: SvgPicture.asset(
                  'assets/images/img/reload.svg',
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: MediaQuery.of(context).size.width * 0.08,
                  fit: BoxFit.cover,
                  color: Color(0xff674FFD),
                ), //reload.svg
                onPressed: () {
                  print('!!!Reload!!!');
                },
              );
            },
          ),
          title: SvgPicture.asset(
            'assets/images/img/bg_logo_top/q.svg',
            width: MediaQuery.of(context).size.width * 0.16,
            //height: MediaQuery.of(context).size.width * 0.059,
            color: Color(0xffFD4F6A),
            //fit: BoxFit.cover,
          ),
          actions: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.19,
              child: IconButton(
                  padding: const EdgeInsets.all(18.0),
                  //iconSize: 24.0,
                  icon: Image.asset(
                    'assets/images/img/Filled.png',
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.width * 0.08,
                    fit: BoxFit.cover,
                    //color: Color(0xff),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Filled.png!!!');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(
                            SettingsSearchPeople: 1,
                          ),
                        ));
                  }
                  //_numBar = 1;

                  ),
            ),
          ], //Filled.svg
        );
      } else {
        return AppBar(
          toolbarHeight: MediaQuery.of(context).size.width * 0.16,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffffffff),
          leadingWidth: MediaQuery.of(context).size.width * 0.19,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: SvgPicture.asset(
                  'assets/images/img/arrow_back.svg',
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: MediaQuery.of(context).size.width * 0.08,
                  color: Color(0xff674FFD),
                ), //reload.svg
                onPressed: () {
                  print('!!!arrow_back.svg!!!');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(
                          SettingsSearchPeople: 0,
                        ),
                      ));
                },
              );
            },
          ),
          title: Text(
            'Настройки поиска людей',
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: ResponsiveFlutter.of(context).fontSize(2.25), //18.0,
              color: const Color(0xFF222222),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.19,
              child: IconButton(
                icon: SvgPicture.asset(
                  'assets/images/img/check_gal.svg',
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: MediaQuery.of(context).size.width * 0.08,
                  fit: BoxFit.cover,
                  //color: Color(0xff),
                ), //reload.svg
                onPressed: () {
                  print('!!!check_gal.svg!!!');
                },
              ),
            ),
          ], //Filled.svg
        );
      }
      break;
    default:
      return AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * 0.16,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xffffffff),

        title: SvgPicture.asset(
          'assets/images/img/bg_logo_top/q.svg',
          width: MediaQuery.of(context).size.width * 0.16,
          //height: MediaQuery.of(context).size.width * 0.059,
          color: Color(0xffFD4F6A),
          //fit: BoxFit.cover,
        ),

        //Filled.svg
      );
  }
}

Widget _widgetMainScreenSettingsSearchPeople(BuildContext context) {
  return Consumer<MyModel>(
    builder: (ctx, numer, child) => SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenHeight(5)),
              width: getProportionateScreenWidth(343),
              height: getProportionateScreenHeight(197),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/img/bg_logo_top/q.svg',
                    width: MediaQuery.of(context).size.width * 0.16,
                    //height: MediaQuery.of(context).size.width * 0.059,
                    color: Color(0xffFD4F6A),
                    //fit: BoxFit.cover,
                  ),
                  Text(
                    'Купите вип, чтобы видеть взаимные лайки, вернуть тех, кого вы случайно дизлайкнули и многое другое',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(2), //16.0,
                      color: const Color(0xFFBABABA),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  //Button next
                  Container(
                    width: getProportionateScreenWidth(311),
                    height: getProportionateScreenHeight(41),
                    // margin:
                    //     EdgeInsets.only(top: getProportionateScreenHeight(10)),
                    child: RaisedButton(
                      elevation: 0,
                      onPressed: () {
                        print('!!!Повысить подписку!!!');
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
                              maxWidth:
                                  getProportionateScreenWidth(311),
                              minHeight:
                                  getProportionateScreenHeight(41),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Повысить подписку',
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
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenHeight(10)),
              width: getProportionateScreenWidth(343),
              height: getProportionateScreenHeight(113),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        'Местонахождение',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize:
                              ResponsiveFlutter.of(context).fontSize(2), //16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on, color: Colors.black,
                        size: ResponsiveFlutter.of(context).fontSize(2.5), //20
                      ),
                      Container(
                        width: getProportionateScreenWidth(8),
                      ),
                      Text(
                        'Определить по геолокации',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.75), //14.0,
                          color: const Color(0xFF222222),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/images/img/check_gal.svg',
                        width: MediaQuery.of(context).size.width * 0.059,
                        height: MediaQuery.of(context).size.width * 0.059,
                        //color: Color(0xff),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(28)),
                        child: InkWell(
                          onTap: () {
                            print('!!!Добавить город!!!');
                          },
                          child: Text(
                            'Добавить город',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(1.5), //12.0,
                              color: const Color(0xFFFD4F6A),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenHeight(10)),
              width: getProportionateScreenWidth(343),
              height: getProportionateScreenHeight(91.7),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RangSliderAge(
                      'Возрастной диапазон', '', 1.0, 100.0, 14, 47, 0),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenHeight(10)),
              width: getProportionateScreenWidth(343),
              height: getProportionateScreenHeight(91.7),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        'Показывать мне',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize:
                              ResponsiveFlutter.of(context).fontSize(2), //16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Consumer<MyModel>(builder: (context, value, child) {
                    if (numer.numer == 0) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _btnBoyGirlAll('Девушек', numer.girls2, 0),
                          _btnBoyGirlAll('Парней', numer.boys2, 1),
                          _btnBoyGirlAll('Всех', numer.any2, 2),
                        ],
                      );
                    }
                  }),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenHeight(10)),
              width: getProportionateScreenWidth(343),
              height: getProportionateScreenHeight(91.7),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RangSliderAge(
                      'Примерное расстояние',
                      ' км от меня',
                      0.1,
                      5.0,
                      // int.parse((1.0).toStringAsFixed(1)),
                      // int.parse((2.0).toStringAsFixed(1)),
                      0.3,
                      3.8,
                      1),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
//getProportionateScreenWidth
//getProportionateScreenHeight

class _btnBoyGirlAll extends StatefulWidget {
  String textGender = '';
  bool WomenButton = false;
  num choose;
  _btnBoyGirlAll(this.textGender, this.WomenButton, this.choose);
  @override
  __btnBoyGirlAllState createState() => __btnBoyGirlAllState();
}

class __btnBoyGirlAllState extends State<_btnBoyGirlAll> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyModel>(context, listen: false);
    return Container(
      width: getProportionateScreenWidth(100),
      height: getProportionateScreenHeight(29),
      //margin: EdgeInsets.only(top: 20, bottom: 20),
      child: RaisedButton(
        onPressed: () {
          //final model = Provider.of<MyModel>(context);
          if (widget.choose == 0) {
            model.girls2 = true;
            model.boys2 = false;
            model.any2 = false;
          }
          if (widget.choose == 1) {
            model.girls2 = false;
            model.boys2 = true;
            model.any2 = false;
          }
          if (widget.choose == 2) {
            model.girls2 = false;
            model.boys2 = false;
            model.any2 = true;
          }
          print('${model.numer}-${widget.choose}');
          print(widget.WomenButton);
        },
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: widget.WomenButton
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
          child: Container(
            constraints: BoxConstraints(
              maxWidth: getProportionateScreenWidth(100),
              minHeight: getProportionateScreenHeight(29),
            ),
            alignment: Alignment.center,
            child: Text(
              widget.textGender,
              style: widget.WomenButton
                  ? TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )
                  : TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(1.75), //18.0,
                      color: const Color(0xFFBABABA),
                      fontWeight: FontWeight.w300,
                    ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class RangSliderAge extends StatefulWidget {
  String title;
  String textCount;
  num min;
  num max;
  double start;
  double end;
  num chooceTypeText;
  RangSliderAge(this.title, this.textCount, this.min, this.max, this.start,
      this.end, this.chooceTypeText);
  @override
  _RangSliderAgeState createState() => _RangSliderAgeState();
}

class _RangSliderAgeState extends State<RangSliderAge> {
  RangeValues _currentRangeValues;
  num start;
  num end;
  @override
  void initState() {
    start = widget.start;
    end = widget.end;
    _currentRangeValues = RangeValues(widget.start, widget.end);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Text(
              (widget.chooceTypeText == 0)
                  ? '${start} - ${end}'
                  : '${start} ' + widget.textCount,
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                color: const Color(0xFFFD4F6A),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(),
          child: RangeSlider(
            activeColor: Color(0xffEA425C),
            inactiveColor: Color(0xffE6E6E6),
            values: _currentRangeValues,
            min: widget.min,
            max: widget.max,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
                if (widget.chooceTypeText == 0) {
                  start = values.start.round();
                  end = values.end.round();
                } else {
                  // start = values.start.round();
                  // end = values.end.round();
                  start = double.parse((values.start).toStringAsFixed(1));
                  end = double.parse((values.end).toStringAsFixed(1));
                }
              });
            },
          ),
        ),
      ],
    );
  }
}

class PagesViewer extends StatelessWidget {
  PagesViewer({this.showWindow});
  final Function showWindow;
  @override
  Widget build(BuildContext context) {
    return Consumer<MyModel>(
      builder: (context, page, child) => SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  page.page2 = value;
                },
                itemCount: 3,
                itemBuilder: (context, index) => widgetMainScreen(
                  BottomSheet: showWindow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
