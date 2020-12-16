import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';
import 'package:qvins/MyModel.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

import 'package:qvins/screens/main/main_screen.dart';

class chooseAppBar extends PreferredSize {
  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.width * 0.16);

  int selectedIndex;
  int numBar;
  BuildContext context;
  chooseAppBar(this.context, this.selectedIndex, this.numBar);
  _chooseAppBar(context, _selectedIndex, _numBar) {
    final model = Provider.of<MyModel>(context);
    switch (_selectedIndex) {
      case 0:
        print('_numBar:$_numBar');
        print('_selectedIndex:$_selectedIndex');
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
                    color: Color(0xffFD4F6A),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Reload!!!');

                    model.selectedIndex = 0;
                    model.numBar = 1;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(
                            SettingsSearchPeople: 1,
                            selectedIndex: 0,
                          ),
                        ));
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
                      model.selectedIndex = 0;
                      model.numBar = 2;
                      print('${model.selectedIndex} - ${model.numBar}');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              SettingsSearchPeople: 2,
                              selectedIndex: 0,
                            ),
                          ));
                    }
                    //_numBar = 1;

                    ),
              ),
            ], //Filled.svg
          );
        } else if (_numBar == 1) {
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
                    model.selectedIndex = 0;
                    model.numBar = 0;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(
                            SettingsSearchPeople: 0,
                            selectedIndex: 0,
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
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //18.0,
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
        } else if (_numBar == 2) {
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
                    model.selectedIndex = 0;
                    model.numBar = 0;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(
                            SettingsSearchPeople: 0,
                            selectedIndex: 0,
                          ),
                        ));
                  },
                );
              },
            ),
            title: Text(
              'Поиск по мероприятиям',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //18.0,
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
        } else if (_numBar == 3) {
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
                    model.selectedIndex = 0;
                    model.numBar = 0;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(
                            SettingsSearchPeople: 0,
                            selectedIndex: 0,
                          ),
                        ));
                  },
                );
              },
            ),
            title: Text(
              'Фильм "Довод"',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.25), //18.0,
                color: const Color(0xFF222222),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            //Filled.svg
          );
        }
        return AppBar(
          title: Text('zzzzzzzzzzzzzz'),
        );
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
                      model.selectedIndex = 2;
                      model.numBar = 1;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              SettingsSearchPeople: 1,
                              selectedIndex: 2,
                            ),
                          ));
                    }
                    //_numBar = 1;

                    ),
              ),
            ], //Filled.svg
          );
        } else if (_numBar == 1) {
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
                    model.selectedIndex = 2;
                    model.numBar = 0;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(
                            SettingsSearchPeople: 0,
                            selectedIndex: 2,
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
                width: MediaQuery.of(context).size.width * 0.14,
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
        } else if (_numBar == 2) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 2;
                    model.numBar = 2;
                    Navigator.pop(context);
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
          );
        }

        break;
      case 3:
        if (_numBar == 0) {
          return AppBar(
            toolbarHeight: MediaQuery.of(context).size.width * 0.16,
            elevation: 0,
            centerTitle: true,
            backgroundColor: Color(0xffffffff),
            leadingWidth: MediaQuery.of(context).size.width * 0.19,

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
                      model.selectedIndex = 3;
                      model.numBar = 4;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              SettingsSearchPeople: 0,
                              selectedIndex: 1,
                            ),
                          ));
                    }
                    //_numBar = 1;

                    ),
              ),
            ],
            //Filled.svg
          );
        } else if (_numBar == 1) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 3;
                    model.numBar = 0;
                    Navigator.pop(context);
                  },
                );
              },
            ),
            title: Row(
              children: [
                CircleAvatar(
                  radius: getProportionateScreenWidth(14),
                  //backgroundColor: Colors.black,
                  backgroundImage:
                      AssetImage('assets/images/img/message_avatar_02.jpg'
                          // fit: BoxFit.fill,
                          // width: getProportionateScreenWidth(50),
                          ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(8)),
                  child: Text(
                    'Валерия',
                    style: TextStyle(
                      fontFamily: 'SF UI Text',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
                      color: const Color(0xFF222222),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (_numBar == 2) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 3;
                    model.numBar = 0;
                    Navigator.pop(context);
                  },
                );
              },
            ),
            title: Row(
              children: [
                CircleAvatar(
                  radius: getProportionateScreenWidth(14),
                  //backgroundColor: Colors.black,
                  backgroundImage:
                      AssetImage('assets/images/img/message_avatar_04.jpg'
                          // fit: BoxFit.fill,
                          // width: getProportionateScreenWidth(50),
                          ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(8)),
                  child: Text(
                    'Концерт Коржа',
                    style: TextStyle(
                      fontFamily: 'SF UI Text',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
                      color: const Color(0xFF222222),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (_numBar == 3) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 3;
                    model.numBar = 0;
                    Navigator.pop(context);
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
          );
        } else if (_numBar == 4) {
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
                    model.selectedIndex = 3;
                    model.numBar = 0;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(
                            SettingsSearchPeople: 0,
                            selectedIndex: 0,
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
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //18.0,
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
      case 4:
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
                  icon: model.selectedIndex == 4
                      ? Container()
                      : SvgPicture.asset(
                          'assets/images/img/arrow_back.svg',
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.width * 0.08,
                          fit: BoxFit.cover,
                          color: Color(0xffBABABA),
                        ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 3;
                    model.numBar = 0;
                    Navigator.pop(context);
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
          );
        } else if (_numBar == 1) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 4;
                    model.numBar = 0;
                    Navigator.pop(context);
                  },
                );
              },
            ),
            title: Text(
              'Все альбомы',
              style: TextStyle(
                fontFamily: 'SF UI Text',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
                color: const Color(0xFF222222),
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.19,
                child: IconButton(
                    padding: const EdgeInsets.all(18.0),
                    //iconSize: 24.0,
                    icon: Icon(
                      Icons.add,
                      color: Color(0xff212121),
                      size: getProportionateScreenWidth(20),
                    ),
                    // Image.asset(
                    //   'assets/images/img/Filled.png',
                    //   width: MediaQuery.of(context).size.width * 0.08,
                    //   height: MediaQuery.of(context).size.width * 0.08,
                    //   fit: BoxFit.cover,
                    //   //color: Color(0xff),
                    // ), //reload.svg
                    onPressed: () {
                      print('!!!Filled.png!!!');
                      model.selectedIndex = 4;
                      model.numBar = 2;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              SettingsSearchPeople: 2,
                              selectedIndex: 4,
                            ),
                          ));
                    }
                    //_numBar = 1;

                    ),
              ),
            ],
          );
        } else if (_numBar == 2) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 4;
                    model.numBar = 1;
                    Navigator.pop(context);
                  },
                );
              },
            ),
            title: Text(
              'Создать новый альбом',
              style: TextStyle(
                fontFamily: 'SF UI Text',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
                color: const Color(0xFF222222),
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        } else if (_numBar == 3) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 4;
                    model.numBar = 3;
                    Navigator.pop(context);
                  },
                );
              },
            ),
            title: Text(
              'Альбом “Концерт Коржа”',
              style: TextStyle(
                fontFamily: 'SF UI Text',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
                color: const Color(0xFF222222),
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.19,
                child: IconButton(
                    padding: const EdgeInsets.all(18.0),
                    //iconSize: 24.0,
                    icon: Icon(
                      Icons.edit,
                      color: Color(0xffFD4F6A),
                      size: getProportionateScreenWidth(20),
                    ),
                    // Image.asset(
                    //   'assets/images/img/Filled.png',
                    //   width: MediaQuery.of(context).size.width * 0.08,
                    //   height: MediaQuery.of(context).size.width * 0.08,
                    //   fit: BoxFit.cover,
                    //   //color: Color(0xff),
                    // ), //reload.svg
                    onPressed: () {
                      print('!!!edit album!!!');
                      model.selectedIndex = 4;
                      model.numBar = 4;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              SettingsSearchPeople: 4,
                              selectedIndex: 4,
                            ),
                          ));
                    }
                    //_numBar = 1;

                    ),
              ),
            ],
          );
        } else if (_numBar == 4) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 4;
                    model.numBar = 3;
                    Navigator.pop(context);
                  },
                );
              },
            ),
            title: Text(
              'Добавить фотографии',
              style: TextStyle(
                fontFamily: 'SF UI Text',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
                color: const Color(0xFF222222),
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.19,
                child: IconButton(
                    padding: const EdgeInsets.all(18.0),
                    //iconSize: 24.0,
                    icon: Icon(
                      Icons.check,
                      color: Color(0xffFD4F6A),
                      size: getProportionateScreenWidth(20),
                    ),
                    // Image.asset(
                    //   'assets/images/img/Filled.png',
                    //   width: MediaQuery.of(context).size.width * 0.08,
                    //   height: MediaQuery.of(context).size.width * 0.08,
                    //   fit: BoxFit.cover,
                    //   //color: Color(0xff),
                    // ), //reload.svg
                    onPressed: () {
                      print('!!!albom update!!!');
                    }
                    //_numBar = 1;

                    ),
              ),
            ],
          );
        } else if (_numBar == 5) {
          return AppBar(
            toolbarHeight: MediaQuery.of(context).size.width * 0.16,
            elevation: 0,
            centerTitle: true,
            backgroundColor: Color(0xff000000),
            leadingWidth: MediaQuery.of(context).size.width * 0.19,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/img/arrow_back.svg',
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.width * 0.08,
                    fit: BoxFit.cover,
                    color: Color(0xffffffff),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    model.selectedIndex = 4;
                    model.numBar = 1;
                    Navigator.pop(context);
                  },
                );
              },
            ),
            title: Text(
              '6 из 12',
              style: TextStyle(
                fontFamily: 'SF UI Text',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
                color: const Color(0xFFffffff),
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.19,
                child: IconButton(
                    padding: const EdgeInsets.all(18.0),
                    //iconSize: 24.0,
                    icon: Icon(
                      Icons.delete_forever,
                      color: Color(0xff888888),
                      size: getProportionateScreenWidth(20),
                    ),
                    // Image.asset(
                    //   'assets/images/img/Filled.png',
                    //   width: MediaQuery.of(context).size.width * 0.08,
                    //   height: MediaQuery.of(context).size.width * 0.08,
                    //   fit: BoxFit.cover,
                    //   //color: Color(0xff),
                    // ), //reload.svg
                    onPressed: () {
                      print('!!!albom update!!!');

                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      6.0)), //this right here
                              child: Container(
                                width: getProportionateScreenWidth(344),
                                height: getProportionateScreenHeight(300),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      getProportionateScreenWidth(12.0)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    //crossAxisAlignment:
                                    //    CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.delete_forever,
                                        size: getProportionateScreenWidth(30),
                                        color: Color(0xffCF3C3C),
                                      ),
                                      // SvgPicture.asset(
                                      //   'assets/images/img/delet_foto_albom.svg',
                                      //   width: 20,
                                      //   height: 20,
                                      //   color: Color(0xffCF3C3C),
                                      // ),
                                      Text(
                                        'Удалить фото',
                                        style: TextStyle(
                                          color: Color(0xff222222),
                                          fontFamily: 'SF Pro Display',
                                          fontSize:
                                              ResponsiveFlutter.of(context)
                                                  .fontSize(2.25), //18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        child: Text(
                                          'Вы действительно хотите удалить  эту фотографию? Восстановить ее будет нельзя',
                                          style: TextStyle(
                                            color: Color(0xffBABABA),
                                            fontFamily: 'SF Pro Display',
                                            fontSize:
                                                ResponsiveFlutter.of(context)
                                                    .fontSize(2.0), //16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            // width: 158.0,
                                            // height: 37,
                                            child: RaisedButton(
                                              onPressed: () {
                                                print('No');
                                                Navigator.pop(context);
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    getProportionateScreenWidth(
                                                        4)),
                                                child: Text(
                                                  "Нет",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: ResponsiveFlutter
                                                            .of(context)
                                                        .fontSize(2.0), //16,
                                                  ),
                                                ),
                                              ),
                                              color: const Color(0xFF3BC341),
                                            ),
                                          ),
                                          Container(
                                            width: 5,
                                          ),
                                          Expanded(
                                            // width: 157.0,
                                            // height: 37,
                                            child: RaisedButton(
                                              onPressed: () {
                                                print('yes');
                                                Navigator.pop(context);
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    getProportionateScreenWidth(
                                                        4)),
                                                child: Text(
                                                  "Да",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: ResponsiveFlutter
                                                            .of(context)
                                                        .fontSize(2.0), //16,
                                                  ),
                                                ),
                                              ),
                                              color: const Color(0xFFCF3C3C),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    }
                    //_numBar = 1;

                    ),
              ),
            ],
          );
        } else if (_numBar == 6) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    Navigator.pop(context);
                  },
                );
              },
            ),
            title: Text(
              'Настройка профиля',
              style: TextStyle(
                fontFamily: 'SF UI Text',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
                color: const Color(0xFF222222),
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.19,
                child: IconButton(
                    padding: const EdgeInsets.all(18.0),
                    //iconSize: 24.0,
                    icon: Icon(
                      Icons.check,
                      color: Color(0xffFD4F6A),
                      size: getProportionateScreenWidth(20),
                    ),
                    // Image.asset(
                    //   'assets/images/img/Filled.png',
                    //   width: MediaQuery.of(context).size.width * 0.08,
                    //   height: MediaQuery.of(context).size.width * 0.08,
                    //   fit: BoxFit.cover,
                    //   //color: Color(0xff),
                    // ), //reload.svg
                    onPressed: () {
                      print('!!!albom update!!!');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              SettingsSearchPeople: 7,
                              selectedIndex: 4,
                            ),
                          ));
                    }
                    //_numBar = 1;

                    ),
              ),
            ],
          );
        } else if (_numBar == 7) {
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
                    fit: BoxFit.cover,
                    color: Color(0xffBABABA),
                  ), //reload.svg
                  onPressed: () {
                    print('!!!Back!!!');
                    Navigator.pop(context);
                  },
                );
              },
            ),
            title: Text(
              'Выбрать определенных людей',
              style: TextStyle(
                fontFamily: 'SF UI Text',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
                color: const Color(0xFF222222),
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.19,
                child: IconButton(
                    padding: const EdgeInsets.all(18.0),
                    //iconSize: 24.0,
                    icon: Icon(
                      Icons.check,
                      color: Color(0xffFD4F6A),
                      size: getProportionateScreenWidth(20),
                    ),
                    // Image.asset(
                    //   'assets/images/img/Filled.png',
                    //   width: MediaQuery.of(context).size.width * 0.08,
                    //   height: MediaQuery.of(context).size.width * 0.08,
                    //   fit: BoxFit.cover,
                    //   //color: Color(0xff),
                    // ), //reload.svg
                    onPressed: () {
                      print('!!!albom update!!!');
                    }
                    //_numBar = 1;

                    ),
              ),
            ],
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

  @override
  Widget build(BuildContext context) {
    return _chooseAppBar(context, selectedIndex, numBar);
  }
}
