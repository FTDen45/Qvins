import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

import 'package:qvins/screens/main/main_screen.dart';
import 'package:qvins/MyModel.dart';

class widgetMenuBottomMessages extends StatelessWidget {
  bool MessageMyFriends = true;
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyModel>(context);
    return Consumer<MyModel>(
      builder: (context, value, child) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //height: getProportionateScreenHeight(700),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            model.messageFriends2 = true;
                          },
                          child: SizedBox(
                            width: getProportionateScreenWidth(375) / 2,
                            height: MediaQuery.of(context).size.height *
                                0.062, //51,
                            child: Container(
                              color: value.messageFriends
                                  ? Color(0xffFD4F6A)
                                  : Color(0xffF4F4F4),
                              child: Center(
                                  child: Text(
                                'Сообщения',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.75), //14.0,
                                  color: value.messageFriends
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            model.messageFriends2 = false;
                          },
                          child: SizedBox(
                            width: getProportionateScreenWidth(375) / 2,
                            height: MediaQuery.of(context).size.height *
                                0.062, //51,
                            child: Container(
                              color: value.messageFriends
                                  ? Color(0xffF4F4F4)
                                  : Color(0xffFD4F6A),
                              child: Center(
                                  child: Text(
                                'Мои друзья',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.75), //14.0,
                                  color: value.messageFriends
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    value.messageFriends
                        ? Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    // vertical:
                                    //     MediaQuery.of(context).size.height *
                                    //         0.019, //16
                                    horizontal:
                                        getProportionateScreenWidth(16.0)),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.019, //16
                                        ),
                                        child: Text(
                                          'Взаимные лайки',
                                          style: TextStyle(
                                            fontFamily: 'SF Pro Display',
                                            fontSize:
                                                ResponsiveFlutter.of(context)
                                                    .fontSize(2.5), //20.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.002, //20
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height:
                                            getProportionateScreenHeight(50),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                print('center avatar');
                                              },
                                              child: CircleAvatar(
                                                radius:
                                                    getProportionateScreenWidth(
                                                        25),
                                                backgroundColor:
                                                    Color(0xffFD4F6A),
                                                child: Icon(Icons.add,
                                                    size:
                                                        getProportionateScreenWidth(
                                                            28),
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Container(
                                              height:
                                                  getProportionateScreenHeight(
                                                      50),
                                              width:
                                                  getProportionateScreenWidth(
                                                      290),
                                              child: ListView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  LikeImage(
                                                      imgpath:
                                                          'assets/images/img/Like_01.png'),
                                                  LikeImage(
                                                      imgpath:
                                                          'assets/images/img/Like_02.jpg'),
                                                  LikeImage(
                                                      imgpath:
                                                          'assets/images/img/Like_03.jpg'),
                                                  LikeImage(
                                                      imgpath:
                                                          'assets/images/img/Like_01.png'),
                                                  LikeImage(
                                                      imgpath:
                                                          'assets/images/img/Like_02.jpg'),
                                                  LikeImage(
                                                      imgpath:
                                                          'assets/images/img/Like_03.jpg'),
                                                  LikeImage(
                                                      imgpath:
                                                          'assets/images/img/Like_01.png'),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom:
                                                getProportionateScreenHeight(
                                                    12),
                                            left:
                                                getProportionateScreenWidth(0)),
                                        child: Text(
                                          'Сообщения',
                                          style: TextStyle(
                                            fontFamily: 'SF Pro Display',
                                            fontSize:
                                                ResponsiveFlutter.of(context)
                                                    .fontSize(2.5), //20.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateScreenWidth(16)),
                                width: MediaQuery.of(context).size.width,
                                //height: getProportionateScreenHeight(425),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      MessageItem(
                                          imgpath:
                                              'assets/images/img/message_avatar_01.jpg',
                                          youMessage: true,
                                          name: 'Ислам',
                                          message: 'Привет! Как дела?'),
                                      MessageItem(
                                          imgpath:
                                              'assets/images/img/message_avatar_02.jpg',
                                          youMessage: true,
                                          name: 'Лера',
                                          message:
                                              'Милая, чем занимаешься сегодня в одолжит одолжит'),
                                      MessageItem(
                                        imgpath:
                                            'assets/images/img/message_avatar_03.jpg',
                                        youMessage: false,
                                        name: 'Умида',
                                        message:
                                            'Привет! Слушай, мог бы одолжит одолжит одолжит',
                                        colMessage: '2',
                                      ),
                                      MessageItem(
                                        imgpath:
                                            'assets/images/img/message_avatar_04.jpg',
                                        youMessage: true,
                                        name: 'Концерт Коржа',
                                        message: 'Привет! Как дела?',
                                        event: true,
                                        events: () {
                                          model.selectedIndex = 3;
                                          model.numBar = 2;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MainScreen(
                                                  SettingsSearchPeople: 2,
                                                  selectedIndex: 3,
                                                  widgetMenuBottomMessagesUserChatBool:
                                                      false,
                                                ),
                                              ));
                                        },
                                      ),
                                      MessageItem(
                                          imgpath:
                                              'assets/images/img/message_avatar_05.jpg',
                                          youMessage: true,
                                          name: 'Анджела',
                                          message: 'Привет! Как дела?'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(16),
                                    right: getProportionateScreenWidth(16),
                                    top: getProportionateScreenHeight(16)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'У вас 56 друзей',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Display',
                                        fontSize: ResponsiveFlutter.of(context)
                                            .fontSize(2.5), //20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        print('MAP');
                                        model.selectedIndex = 3;
                                        model.numBar = 3;
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => MainScreen(
                                                SettingsSearchPeople: 3,
                                                selectedIndex: 3,
                                              ),
                                            ));
                                      },
                                      icon: Icon(
                                        Icons.map,
                                        color: Color(0xffFD4F6A),
                                        size: getProportionateScreenWidth(20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getProportionateScreenWidth(344),
                                margin: EdgeInsets.symmetric(
                                    vertical: getProportionateScreenHeight(24)),
                                child: TextFormField(
                                  //initialValue: 'abc',
                                  style: TextStyle(
                                    fontSize: ResponsiveFlutter.of(context)
                                        .fontSize(1.75), //14,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        getProportionateScreenWidth(13.0),
                                        getProportionateScreenHeight(13.0),
                                        getProportionateScreenWidth(13.0),
                                        getProportionateScreenHeight(12.0)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.symmetric(
                                          //horizontal: getProportionateScreenWidth(10.0),
                                          //vertical: getProportionateScreenHeight(10.0),
                                          ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            getProportionateScreenWidth(10.0)),
                                        child: Icon(
                                          Icons.search,
                                          color: Color(0xffBABABA),
                                          size: getProportionateScreenWidth(22),
                                        ),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Color(0xffBABABA),
                                    )),
                                    hintText: 'Поиск по друзьям',
                                    hintStyle:
                                        TextStyle(color: Color(0xffBABABA)),
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
                                // constraints: BoxConstraints(
                                //     minHeight: 400,
                                //     maxHeight:
                                //         getProportionateScreenHeight(442)),
                                //height: getProportionateScreenHeight(453),
                                // height: double.infinity +
                                //     getProportionateScreenHeight(16),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(16)),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        MyFriendsList(
                                          img:
                                              'assets/images/img/avatar_myfriends_list_01.jpg',
                                          name: 'Кожамниязов Ислам',
                                        ),
                                        MyFriendsList(
                                          img:
                                              'assets/images/img/avatar_myfriends_list_01.jpg',
                                          name: 'Кожамниязов Ислам',
                                        ),
                                        MyFriendsList(
                                          img:
                                              'assets/images/img/avatar_myfriends_list_01.jpg',
                                          name: 'Кожамниязов Ислам',
                                        ),
                                        MyFriendsList(
                                          img:
                                              'assets/images/img/avatar_myfriends_list_01.jpg',
                                          name: 'Кожамниязов Ислам',
                                        ),
                                        MyFriendsList(
                                          img:
                                              'assets/images/img/avatar_myfriends_list_01.jpg',
                                          name: 'Кожамниязов Ислам',
                                        ),
                                        MyFriendsList(
                                          img:
                                              'assets/images/img/avatar_myfriends_list_01.jpg',
                                          name: 'Кожамниязов Ислам',
                                        ),
                                        MyFriendsList(
                                          img:
                                              'assets/images/img/avatar_myfriends_list_01.jpg',
                                          name: 'Кожамниязов Ислам',
                                        ),
                                        MyFriendsList(
                                          img:
                                              'assets/images/img/avatar_myfriends_list_01.jpg',
                                          name: 'Кожамниязов Ислам',
                                        ),
                                        MyFriendsList(
                                          img:
                                              'assets/images/img/avatar_myfriends_list_01.jpg',
                                          name: 'Кожамниязов Ислам',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFriendsList extends StatelessWidget {
  MyFriendsList({this.img, this.name});
  String img;
  String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('friends chat ');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: getProportionateScreenHeight(12)),
        child: Row(
          children: [
            CircleAvatar(
              radius: getProportionateScreenWidth(22),
              backgroundImage: AssetImage(img),
            ),
            Container(
              width: getProportionateScreenWidth(16),
            ),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                color: Color(0xFF222222),
              ),
            ),
            Spacer(),
            SvgPicture.asset(
              'assets/images/img/message_friends.svg',
              width: getProportionateScreenWidth(20),
              height: getProportionateScreenHeight(20),
            )
          ],
        ),
      ),
    );
  }
}

class LikeImage extends StatelessWidget {
  String imgpath;
  LikeImage({this.imgpath});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(50),
      height: getProportionateScreenHeight(50),
      margin: EdgeInsets.only(right: getProportionateScreenHeight(0)),
      child: GestureDetector(
        onTap: () {
          print('center avatar');
        },
        child: CircleAvatar(
          radius: getProportionateScreenWidth(25),
          //backgroundColor: Colors.black,
          backgroundImage: AssetImage(imgpath
              // fit: BoxFit.fill,
              // width: getProportionateScreenWidth(50),
              ),
        ),
      ),
    );
  }
}

class MessageItem extends StatelessWidget {
  MessageItem(
      {this.imgpath,
      this.youMessage = true,
      this.name,
      this.message,
      this.colMessage = '0',
      this.events,
      this.event = false});
  String imgpath;
  bool youMessage;
  String name;
  String message;
  String colMessage;
  bool event;
  Function events;
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyModel>(context);
    return GestureDetector(
      onTap: event
          ? events
          : () {
              print('Message avatar - Chat User');
              model.selectedIndex = 3;
              model.numBar = 1;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(
                      SettingsSearchPeople: 1,
                      selectedIndex: 3,
                      widgetMenuBottomMessagesUserChatBool: false,
                    ),
                  ));
            },
      child: Column(
        children: [
          Container(
            //margin: EdgeInsets.only(bottom: getProportionateScreenHeight(12)),
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: getProportionateScreenWidth(20.0)),
                  child: CircleAvatar(
                    radius: getProportionateScreenWidth(35),
                    //backgroundColor: Colors.black,
                    backgroundImage: AssetImage(imgpath
                        // fit: BoxFit.fill,
                        // width: getProportionateScreenWidth(50),
                        ),
                  ),
                ),
                Container(
                  height: getProportionateScreenHeight(71),
                  width: getProportionateScreenWidth(225),
                  // decoration: BoxDecoration(
                  //   border: Border(
                  //     bottom: BorderSide(
                  //       width: 1,
                  //       color: Color(0xffD9D9D9),
                  //     ),
                  //   ),
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(2.25), //18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          youMessage
                              ? Icon(Icons.undo,
                                  size: ResponsiveFlutter.of(context)
                                      .fontSize(2.25) //18
                                  ,
                                  color: Color(0xffBABABA))
                              : Container(),
                          Flexible(
                            child: Text(
                              message,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.75), //14.0,
                                color: youMessage
                                    ? const Color(0xFFBABABA)
                                    : Color(0xFFFD4F6A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                youMessage
                    ? Container()
                    : CircleAvatar(
                        radius: getProportionateScreenWidth(12),
                        backgroundColor: Color(0xffFD4F6A),
                        child: Text(
                          colMessage,
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(1.625), //13.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: getProportionateScreenHeight(12),
              top: getProportionateScreenHeight(12),
              left: getProportionateScreenWidth(91),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0xffD9D9D9),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
