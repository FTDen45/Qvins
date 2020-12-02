import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

import 'package:qvins/screens/main/main_screen.dart';

class widgetMenuBottomMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFAFAFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(375) / 2,
                height: getProportionateScreenHeight(51),
                child: Container(
                  color: Color(0xffFD4F6A),
                  child: Center(
                      child: Text(
                    'Сообщения',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(375) / 2,
                height: getProportionateScreenHeight(51),
                child: Container(
                  color: Color(0xffF4F4F4),
                  child: Center(
                      child: Text(
                    'Мои друзья',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
                      color: Colors.black,
                    ),
                  )),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(16.0)),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(12)),
                    child: Text(
                      'Взаимные лайки',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:
                            ResponsiveFlutter.of(context).fontSize(2.5), //20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(50),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('center avatar');
                          },
                          child: CircleAvatar(
                            radius: getProportionateScreenWidth(25),
                            backgroundColor: Color(0xffFD4F6A),
                            child: Icon(Icons.add,
                                size: getProportionateScreenWidth(28),
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          height: getProportionateScreenHeight(50),
                          width: getProportionateScreenWidth(290),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              LikeImage(
                                  imgpath: 'assets/images/img/Like_01.jpg'),
                              LikeImage(
                                  imgpath: 'assets/images/img/Like_02.jpg'),
                              LikeImage(
                                  imgpath: 'assets/images/img/Like_03.jpg'),
                              LikeImage(
                                  imgpath: 'assets/images/img/Like_01.jpg'),
                              LikeImage(
                                  imgpath: 'assets/images/img/Like_02.jpg'),
                              LikeImage(
                                  imgpath: 'assets/images/img/Like_03.jpg'),
                              LikeImage(
                                  imgpath: 'assets/images/img/Like_01.jpg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: getProportionateScreenHeight(12),
                left: getProportionateScreenWidth(16)),
            child: Text(
              'Сообщения',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: ResponsiveFlutter.of(context).fontSize(2.5), //20.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            width: MediaQuery.of(context).size.width,
            height: getProportionateScreenHeight(425),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MessageItem(
                      imgpath: 'assets/images/img/message_avatar_01.jpg',
                      youMessage: true,
                      name: 'Ислам',
                      message: 'Привет! Как дела?'),
                  MessageItem(
                      imgpath: 'assets/images/img/message_avatar_02.jpg',
                      youMessage: true,
                      name: 'Лера',
                      message:
                          'Милая, чем занимаешься сегодня в одолжит одолжит'),
                  MessageItem(
                    imgpath: 'assets/images/img/message_avatar_03.jpg',
                    youMessage: false,
                    name: 'Умида',
                    message: 'Привет! Слушай, мог бы одолжит одолжит одолжит',
                    colMessage: '2',
                  ),
                  MessageItem(
                    imgpath: 'assets/images/img/message_avatar_04.jpg',
                    youMessage: true,
                    name: 'Концерт Коржа',
                    message: 'Привет! Как дела?',
                    event: true,
                    events: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              SettingsSearchPeople: 2,
                              selectedIndex: 3,
                              widgetMenuBottomMessagesUserChatBool: false,
                            ),
                          ));
                    },
                  ),
                  MessageItem(
                      imgpath: 'assets/images/img/message_avatar_05.jpg',
                      youMessage: true,
                      name: 'Анджела',
                      message: 'Привет! Как дела?'),
                ],
              ),
            ),
          ),
        ],
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
    return GestureDetector(
      onTap: event
          ? events
          : () {
              print('Message avatar - Chat User');
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
