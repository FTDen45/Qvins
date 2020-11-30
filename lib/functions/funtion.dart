import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

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
                            selectedIndex: 2,
                          ),
                        ));
                  },
                );
              },
            ),
            title: Text(
              'zzzНастройки поиска людей',
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
