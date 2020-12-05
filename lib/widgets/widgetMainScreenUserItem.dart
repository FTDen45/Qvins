import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

import 'package:qvins/screens/main/main_screen.dart';
import 'package:qvins/MyModel.dart';
import 'package:qvins/widgets/reviewsShowBottomSheet.dart';

class widgetMainScreenUserItem extends StatelessWidget {
  widgetMainScreenUserItem(
      {this.showWindow2,
      this.showWindow,
      this.TypeViewAddFriend = true,
      this.TwoBtn = false});

  bool TypeViewAddFriend;
  bool TwoBtn;
  Function showWindow;
  Function showWindow2;
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyModel>(context);
    return Consumer<MyModel>(
      builder: (context, value, child) => Container(
        color: Color(0xffFAFAFA),
        width: getProportionateScreenWidth(375),
        height: getProportionateScreenHeight(412),
        //child: Body(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Body(),
              //Button next
              TwoBtn
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(375) / 2 - 1,
                          height: getProportionateScreenHeight(50),
                          margin: EdgeInsets.only(
                              bottom: getProportionateScreenHeight(18)),
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {
                              print('!!!Вы друзья!!!');
                              showWindow2(context, 'Кожамниязов Ислам11');
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => MainScreen(
                              //         SettingsSearchPeople: 3,
                              //         selectedIndex: 0,
                              //       ),
                              //     ));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                //borderRadius: BorderRadius.circular(4.0),
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
                                      getProportionateScreenWidth(375) / 2 - 1,
                                  minHeight: getProportionateScreenHeight(50),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Вы друзья',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Display',
                                        fontSize: ResponsiveFlutter.of(context)
                                            .fontSize(2), //16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.expand_more,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(375) / 2 - 1,
                          height: getProportionateScreenHeight(50),
                          margin: EdgeInsets.only(
                              bottom: getProportionateScreenHeight(18)),
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {
                              print('!!!Написать сообщение!!!');
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => MainScreen(
                              //         SettingsSearchPeople: 3,
                              //         selectedIndex: 0,
                              //       ),
                              //     ));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                //borderRadius: BorderRadius.circular(4.0),
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
                                      getProportionateScreenWidth(375) / 2 - 1,
                                  minHeight: getProportionateScreenHeight(50),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Написать сообщение',
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
                    )
                  : Container(
                      width: getProportionateScreenWidth(375),
                      height: getProportionateScreenHeight(50),
                      margin: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(18)),
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {
                          print('!!!Добавить в друзья!!!');
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => MainScreen(
                          //         SettingsSearchPeople: 3,
                          //         selectedIndex: 0,
                          //       ),
                          //     ));
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
                              maxWidth: getProportionateScreenWidth(375),
                              minHeight: getProportionateScreenHeight(50),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              TypeViewAddFriend
                                  ? 'Добавить в друзья'
                                  : 'Настроить профиль',
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
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(16)),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Кожамниязов Ислам',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2.5), //20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(8),
                        ),
                        SizedBox(
                          //height: getProportionateScreenHeight(20.0),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              '4.5',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.75), //14,
                                color: const Color(0xFFBABABA),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(8),
                        ),
                        SizedBox(
                          //height: getProportionateScreenHeight(20.0),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: SvgPicture.asset(
                              "assets/images/img/star.svg",
                              width: getProportionateScreenWidth(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(getProportionateScreenWidth(16)),
                    child: Text(
                      'UI/UX-дизайнер, который создает Digital-проекты под ключ: сайты, мобильные приложения для малых и средних бизнесов. Рад любому общению!',
                      style: TextStyle(
                        fontFamily: 'SF UI Text',
                        fontSize:
                            ResponsiveFlutter.of(context).fontSize(2), //16.0,
                        color: const Color(0xFF222222),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xffE1E1E1),
                    height: getProportionateScreenHeight(1),
                    width: getProportionateScreenWidth(375),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16),
                      vertical: getProportionateScreenWidth(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Text(
                            'Последние альбомы',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2.5), //20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Посмотреть все !!!');
                            //showWindow(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainScreen(
                                    SettingsSearchPeople: 1,
                                    selectedIndex: 4,
                                    //widgetMenuBottomMessagesUserChatBool: false,
                                  ),
                                ));
                          },
                          child: SizedBox(
                            child: Text(
                              'Посмотреть все',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.5), //12.0,
                                color: Color(0xFFFD4F6A),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: getProportionateScreenWidth(16)),
                    height: getProportionateScreenHeight(101),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        EventsWeekItem(
                          'assets/images/img/Event_item_01.jpg',
                          0,
                          'Концерт Коржа',
                        ),
                        EventsWeekItem(
                          'assets/images/img/Event_item_02.jpg',
                          1,
                          'Мои друзья',
                        ),
                        EventsWeekItem(
                          'assets/images/img/Event_item_03.png',
                          2,
                          'Мои друзья',
                        ),

                        //_btnBoyGirlAll('2.0', false, 2),
                        //_btnBoyGirlAll('1.0', false, 2),
                      ],
                    ),
                  ),
                  reviewsShowBottomSheet(
                    user: true,
                    showBottom: showWindow,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EventsWeekItem extends StatelessWidget {
  EventsWeekItem(this.img, this.tap, this.nameEvent);
  String img;
  int tap;
  String nameEvent;
  void tapEvents(int event) {
    print('Events $event!!!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(8),
      ),
      child: GestureDetector(
        onTap: () {
          tapEvents(tap);
        },
        child: Container(
          width: getProportionateScreenWidth(185),
          height: getProportionateScreenHeight(101),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(3.0)),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                  width: getProportionateScreenWidth(185),
                  height: getProportionateScreenHeight(101),
                ),
              ),
              Positioned(
                left: getProportionateScreenWidth(12),
                bottom: getProportionateScreenHeight(12),
                child: Text(
                  nameEvent,
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize:
                        ResponsiveFlutter.of(context).fontSize(1.5), //12.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
        // child: Image.asset(
        //   img,
        //   width: getProportionateScreenWidth(122),
        //   height: getProportionateScreenHeight(77),
        //   fit: BoxFit.fill,
        // ),
      ),
    );
  }
}

// class PagesViewer extends StatelessWidget {
//   PagesViewer({this.showWindow});
//   final Function showWindow;
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<MyModel>(
//       builder: (context, page, child) => SizedBox(
//         width: double.infinity,
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               flex: 3,
//               child: PageView.builder(
//                 onPageChanged: (value) {
//                   page.page2 = value;
//                 },
//                 itemCount: 3,
//                 itemBuilder: (context, index) => widgetMainScreen(
//                   BottomSheet: showWindow,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/img/main_users_avatar_01.jpg"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/img/main_users_avatar_01.jpg"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/img/main_users_avatar_01.jpg"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/img/main_users_avatar_01.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(389),
      width: getProportionateScreenWidth(375),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: getProportionateScreenHeight(389),
              width: getProportionateScreenWidth(375),
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            child: Container(
              width: getProportionateScreenWidth(375),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 2.5, left: 2.5),
      height: getProportionateScreenHeight(2),
      //width: currentPage == index ? 20 : 6,
      width: getProportionateScreenWidth(375) / splashData.length -
          2.5 * splashData.length,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xFFC4C4C4) : Color(0xFF8A8A8A),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(389),
      width: getProportionateScreenWidth(375),
      child: Stack(
        children: <Widget>[
          Image.asset(
            image,
            height: getProportionateScreenHeight(389),
            width: getProportionateScreenWidth(375),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
