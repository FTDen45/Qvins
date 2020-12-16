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

import 'package:qvins/widgets/reviewsShowBottomSheet.dart';
import 'package:qvins/widgets/reviewsShowBottomSheet2.dart';

import 'package:qvins/widgets/widgetMenuBottomEvents.dart';
import 'package:qvins/widgets/widgetMainScreenSettingsSearchEvents.dart';
import 'package:qvins/widgets/widgetMenuBottomPeopl.dart';
import 'package:qvins/widgets/widgetMainScreenSettingsSearchPeople.dart';
import 'package:qvins/widgets/widgetMainScreenSercheSearchEvents.dart';
import 'package:qvins/widgets/widgetMainScreenItemSearchEvents.dart';

import 'package:qvins/widgets/widgetMainScreenUserItem.dart';
import 'package:qvins/widgets/widgetMenuBottomMessages.dart';
import 'package:qvins/widgets/widgetMenuBottomMessagesMap.dart';
import 'package:qvins/widgets/widgetMenuBottomMessagesUserChat.dart';
import 'package:qvins/widgets/widgetMenuBottomMessagesUserChatEvent.dart';

import 'package:qvins/widgets/widgetProfileAllAlbomes.dart';
import 'package:qvins/widgets/widgetProfileAllAlbomesItem.dart';
import 'package:qvins/widgets/widgetProfileAllAlbomesImageView.dart';
import 'package:qvins/widgets/widgetProfileAllAlbomesCreate.dart';
import 'package:qvins/widgets/widgetProfileAllAlbomesEdit.dart';

import 'package:qvins/widgets/widgetProfileUserEdit.dart';
import 'package:qvins/widgets/widgetProfileUserSearchPeople.dart';
import 'package:qvins/widgets/widgetMainScreenSettingsSearchEventsMessage.dart';

import 'package:qvins/functions/funtion.dart';

class MainScreen extends StatefulWidget {
  final int SettingsSearchPeople;
  final int selectedIndex;
  bool widgetMenuBottomMessagesUserChatBool;
  MainScreen(
      {this.SettingsSearchPeople,
      this.selectedIndex,
      this.widgetMenuBottomMessagesUserChatBool = true});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex;
  int numBar;

  bool meropriatie = false;
  bool people = false;
  bool main = true;
  bool message = false;
  bool profile = false;

  bool messageIndicatorRedDot = true;

  Widget funcPrint(text) {
    print(text);
    return Container(
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  initState() {
    super.initState();

    selectedIndex = widget.selectedIndex;
    numBar = widget.SettingsSearchPeople;

    // print('zzzzzzzzzzzzz');

    // funcPrint('selectedIndex $selectedIndex');
    // funcPrint('numBar $numBar');
  }

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  void _onItemTapped(int index, int numB) {
    setState(() {
      selectedIndex = index;
      numBar = numB;
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

  void _showWindow2(context, name) {
    showBottomSheet(
      //showModalBottomSheet(
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20.0),
      // ),
      backgroundColor: Colors.transparent,
      context: context,
      builder: (builder) {
        return reviewsShowBottomSheet2(name: name);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _widgetScreensUsers(selectedIndex, context, optionStyle) {
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
      return _widgetOptions.elementAt(selectedIndex);
    }

    Widget _indexScrin(context, index, i) {
      switch (index) {
        case 0:
          print('Мероприятия');
          print('i_0 = $i');
          if (i == 0) {
            return widgetMenuBottomEvents();
          } else if (i == 1) {
            return widgetMainScreenSettingsSearchEvents(); //Events
          } else if (i == 2) {
            return widgetMainScreenSercheSearchEvents(); //Events
          } else if (i == 3) {
            return widgetMainScreenItemSearchEvents(); //Events
          }
          break;
        case 1:
          print('Люди рядом');
          return widgetMenuBottomPeopl();
          break;
        case 2:
          print('Главная');
          print('i_2 = $i');
          if (i == 0) {
            return PagesViewer(
              showWindow: _showWindow,
            );
          } else if (i == 1) {
            return widgetMainScreenSettingsSearchPeople();
          } else if (i == 2) {
            return widgetMainScreenUserItem(showWindow: _showWindow);
          }
          break;
        case 3:
          print('Сообщения');
          if (i == 0) {
            return widgetMenuBottomMessages();
          } else if (i == 1) {
            return widgetMenuBottomMessagesUserChat();
          } else if (i == 2) {
            return widgetMenuBottomMessagesUserChatEvent();
          } else if (i == 3) {
            return widgetMenuBottomMessagesMap();
          } else if (i == 4) {
            return widgetMainScreenSettingsSearchEventsMessage();
          }
          break;
        case 4:
          print('Профиль');
          if (i == 0) {
            return widgetMainScreenUserItem(
              showWindow: _showWindow,
              TypeViewAddFriend: false,
              TwoBtn: true,
              showWindow2: _showWindow2,
            );
          } else if (i == 1) {
            return widgetProfileAllAlbomes();
          } else if (i == 2) {
            return widgetProfileAllAlbomesCreate();
          } else if (i == 3) {
            return widgetProfileAllAlbomesItem();
          } else if (i == 4) {
            return widgetProfileAllAlbomesEdit();
          } else if (i == 5) {
            return widgetProfileAllAlbomesImageView();
          } else if (i == 6) {
            return widgetProfileUserEdit();
          } else if (i == 7) {
            return widgetProfileUserSearchPeople();
          }
          break;
        default:
          print('Нижнее меню');
      }
    }

    SizeConfig().init(context);
    final model = Provider.of<MyModel>(context);
    return Consumer<MyModel>(
      builder: (context, value, child) => SafeArea(
        child: Scaffold(
          //resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF4F4F4),
          appBar: chooseAppBar(context, value.selectedIndex2, value.numBar2),
          //body: _widgetOptions.elementAt(selectedIndex),
          body: //_widgetScreensUsers(selectedIndex, context, optionStyle),
              Stack(
            children: [
              Positioned(
                bottom: widget.widgetMenuBottomMessagesUserChatBool
                    ? MediaQuery.of(context).size.height * 0.103
                    : 0,
                top: 0,
                left: 0,
                right: 0,
                child: _indexScrin(context, model.selectedIndex2,
                    model.numBar2), //_widgetMainScreen(context),
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
              //   child: _widgetScreensUsers(selectedIndex, context, optionStyle),
              // ),
              //_widgetScreensUsers(selectedIndex, context, optionStyle),
              widget.widgetMenuBottomMessagesUserChatBool
                  ? Positioned(
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
                                model.meropriatie = true;
                                model.people = false;
                                model.main = false;
                                model.message = false;
                                model.profile = false;
                                model.selectedIndex = 0;
                                model.numBar = 0;
                                setState(() {
                                  _onItemTapped(0, 0);
                                  selectedIndex = 0;
                                  numBar = 0;

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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        color: value.meropriatie2
                                            ? Color(0xffFD4F6A)
                                            : Color(0xffBABABA),
                                        size: ResponsiveFlutter.of(context)
                                            .fontSize(3.75), //30.0,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.005, //4
                                      ),
                                      Text(
                                        'Мероприятия',
                                        style: TextStyle(
                                          fontSize:
                                              ResponsiveFlutter.of(context)
                                                  .fontSize(1.25), //10,
                                          color: value.meropriatie2
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
                                model.meropriatie = false;
                                model.people = true;
                                model.main = false;
                                model.message = false;
                                model.profile = false;
                                model.selectedIndex = 1;
                                model.numBar = 0;
                                setState(() {
                                  _onItemTapped(1, 0);
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.location,
                                        color: value.people2
                                            ? Color(0xffFD4F6A)
                                            : Color(0xffBABABA),
                                        size: ResponsiveFlutter.of(context)
                                            .fontSize(3.75), //30.0,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.005, //4
                                      ),
                                      Text(
                                        'Люди рядом',
                                        style: TextStyle(
                                          fontSize:
                                              ResponsiveFlutter.of(context)
                                                  .fontSize(1.25), //10,
                                          color: value.people2
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
                                model.meropriatie = false;
                                model.people = false;
                                model.main = true;
                                model.message = false;
                                model.profile = false;
                                model.selectedIndex = 2;
                                model.numBar = 0;
                                setState(() {
                                  _onItemTapped(2, 0);
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/img/bg_logo_top/q.svg",
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.045,
                                        color: value.main2
                                            ? Color(0xffFD4F6A)
                                            : Color(0xffBABABA),
                                        fit: BoxFit.fitHeight,
                                      ),
                                      Container(
                                          //height: MediaQuery.of(context).size.height *
                                          //    0.005, //4
                                          ),
                                      Text(
                                        'Главная',
                                        style: TextStyle(
                                          fontSize:
                                              ResponsiveFlutter.of(context)
                                                  .fontSize(1.25), //10,
                                          color: value.main2
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
                                model.meropriatie = false;
                                model.people = false;
                                model.main = false;
                                model.message = true;
                                model.profile = false;
                                model.selectedIndex = 3;
                                model.numBar = 0;
                                setState(() {
                                  _onItemTapped(3, 0);
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Icon(
                                            CupertinoIcons.conversation_bubble,
                                            color: value.message2
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
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.027, //10,
                                                  )
                                                : SizedBox(),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.005, //4
                                      ),
                                      Text(
                                        'Сообщения',
                                        style: TextStyle(
                                          fontSize:
                                              ResponsiveFlutter.of(context)
                                                  .fontSize(1.25), //10,
                                          color: value.message2
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
                                model.meropriatie = false;
                                model.people = false;
                                model.main = false;
                                model.message = false;
                                model.profile = true;
                                model.selectedIndex = 4;
                                model.numBar = 0;
                                setState(() {
                                  _onItemTapped(4, 0);
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.person,
                                        color: value.profile2
                                            ? Color(0xffFD4F6A)
                                            : Color(0xffBABABA),
                                        size: ResponsiveFlutter.of(context)
                                            .fontSize(3.75), //30.0,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.005, //4
                                      ),
                                      Text(
                                        'Профиль',
                                        style: TextStyle(
                                          fontSize:
                                              ResponsiveFlutter.of(context)
                                                  .fontSize(1.25), //10,
                                          color: value.profile2
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
                    )
                  : Container(),
              // Positioned(
              //   top: 0,
              //   child: Column(
              //     children: [
              //       funcPrint('selectedIndex $selectedIndex'),
              //       funcPrint('numBar $numBar'),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

enum _appBars {
  _AppBarSettingsSearchPeopl,
}

//getProportionateScreenWidth
//getProportionateScreenHeight

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
