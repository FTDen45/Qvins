import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:qvins/MyModel.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';
import 'package:qvins/screens/main/main_screen.dart';

import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class widgetMainScreenItemSearchEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyModel>(
      builder: (ctx, numer, child) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: getProportionateScreenHeight(475),
                    child: Stack(
                      children: [
                        Stack(children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/img/zzzzzz.png',
                                ),
                              ),
                            ),
                            height: getProportionateScreenHeight(381),
                            width: getProportionateScreenWidth(375),
                          ),
                          Container(
                            height: getProportionateScreenHeight(381),
                            width: getProportionateScreenWidth(375),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                    begin: FractionalOffset.topCenter,
                                    end: FractionalOffset.bottomCenter,
                                    colors: [
                                      Colors.grey.withOpacity(0.0),
                                      Colors.black,
                                    ],
                                    stops: [
                                      0.0,
                                      1.0
                                    ])),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/img/mask2.png',
                                ),
                              ),
                            ),
                            height: getProportionateScreenHeight(381),
                            width: getProportionateScreenWidth(375),
                          ),
                        ]),
                        // SizedBox(
                        //   width: getProportionateScreenWidth(375),
                        //   height: getProportionateScreenHeight(381),
                        //   child: MaskedImage(
                        //     asset: 'assets/images/img/zzzzzz.png',
                        //     mask: 'assets/images/img/mask.png',
                        //   ),
                        // ),
                        Positioned(
                          top: getProportionateScreenHeight(351),
                          left: getProportionateScreenWidth(16),
                          right: getProportionateScreenWidth(16),
                          child: Column(
                            children: [
                              //Button next
                              Container(
                                width: getProportionateScreenWidth(344),
                                height: getProportionateScreenHeight(51),
                                margin: EdgeInsets.only(
                                    top: getProportionateScreenHeight(10)),
                                child: RaisedButton(
                                  elevation: 0,
                                  onPressed: () {
                                    print(
                                        '!!!Я пойду! Купить билет от 150 ₽!!!');
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
                                            getProportionateScreenWidth(344),
                                        minHeight:
                                            getProportionateScreenHeight(51),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Я пойду! Купить билет от 150 ₽',
                                        style: TextStyle(
                                          fontFamily: 'SF Pro Display',
                                          fontSize:
                                              ResponsiveFlutter.of(context)
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
                                width: getProportionateScreenWidth(344),
                                height: getProportionateScreenHeight(51),
                                margin: EdgeInsets.only(
                                    top: getProportionateScreenHeight(10)),
                                child: RaisedButton(
                                  elevation: 0,
                                  onPressed: () {
                                    print('!!!Вступить в общий чат!!!');
                                  },
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xffFD4F6A)),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            getProportionateScreenWidth(344),
                                        minHeight:
                                            getProportionateScreenHeight(51),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Вступить в общий чат',
                                        style: TextStyle(
                                          fontFamily: 'SF Pro Display',
                                          fontSize:
                                              ResponsiveFlutter.of(context)
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
                        Positioned(
                            top: getProportionateScreenHeight(267),
                            left: getProportionateScreenWidth(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Фильм “Довод”',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 22.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Триллер • Кино • 16+',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 14.0,
                                    color: const Color(0xFF7B7B7B),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          child: Text(
                            'Рейтинг',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2.25), //18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          child: Row(
                            children: [
                              Text(
                                '7.6',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(2.25), //18.0,
                                  color: const Color(0xFFE75E0B),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: getProportionateScreenWidth(8),
                              ),
                              Text(
                                'КиноПоиск',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.75), //14.0,
                                  color: const Color(0xFFBABABA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          child: Text(
                            'О событии',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2.25), //18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          child: Text(
                            'С 3 сентября 2020 года в немногочисленных открытых российских кинотеатрах начнут показывать новый фантастический триллер Кристофера',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(1.75), //14.0,
                              color: const Color(0xFFBABABA),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          child: Text(
                            'Читать полностью',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(1.75), //14.0,
                              color: const Color(0xFFFD4F6A),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: getProportionateScreenWidth(4)),
                                child: Icon(
                                  Icons.access_time,
                                  size: getProportionateScreenWidth(22),
                                  color: Color(0xffFD4F6A),
                                ),
                              ),
                              Text(
                                '1 час 40 минут',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.75), //14.0,
                                  color: const Color(0xFFBABABA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: getProportionateScreenWidth(4)),
                                child: Icon(
                                  Icons.event,
                                  size: getProportionateScreenWidth(22),
                                  color: Color(0xffFD4F6A),
                                ),
                              ),
                              Text(
                                '15.07.2021',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.75), //14.0,
                                  color: const Color(0xFFBABABA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: getProportionateScreenWidth(4)),
                                child: Icon(
                                  CupertinoIcons.location,
                                  size: getProportionateScreenWidth(22),
                                  color: Color(0xffFD4F6A),
                                ),
                              ),
                              Text(
                                'город Москва, киномакс “Титан”',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.75), //14.0,
                                  color: const Color(0xFFBABABA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(8)),
                          height: getProportionateScreenHeight(77),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              EventsWeekItem(
                                'assets/images/img/Event_item_01.jpg',
                                0,
                              ),
                              EventsWeekItem(
                                'assets/images/img/Event_item_02.jpg',
                                1,
                              ),
                              EventsWeekItem(
                                'assets/images/img/Event_item_03.png',
                                2,
                              ),

                              //_btnBoyGirlAll('2.0', false, 2),
                              //_btnBoyGirlAll('1.0', false, 2),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          child: Text(
                            'Популярно на этой недели',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2.25), //18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(8)),
                          height: getProportionateScreenHeight(145),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: getProportionateScreenWidth(200),
                                margin: EdgeInsets.only(
                                  right: getProportionateScreenWidth(12),
                                ),
                                child: EventsItem(
                                  'assets/images/img/Kino_02.jpg',
                                  'Концерт Коржа',
                                  'сегодня, 15 июля • Олимпийский',
                                ),
                              ),
                              Container(
                                width: getProportionateScreenWidth(200),
                                margin: EdgeInsets.only(
                                  right: getProportionateScreenWidth(12),
                                ),
                                child: EventsItem(
                                  'assets/images/img/Kino_01.jpg',
                                  'Фильм “Жених”',
                                  'сегодня, 15 июля • Олимпийский',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

class MaskedImage extends StatelessWidget {
  final String asset;
  final String mask;

  MaskedImage({@required this.asset, @required this.mask});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FutureBuilder<List>(
        future: _createShaderAndImage(
            asset, mask, constraints.maxWidth, constraints.maxHeight),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const SizedBox.shrink();
          return ShaderMask(
            blendMode: BlendMode.dstATop,
            shaderCallback: (rect) => snapshot.data[0],
            child: snapshot.data[1],
          );
        },
      );
    });
  }

  Future<List> _createShaderAndImage(
      String asset, String mask, double w, double h) async {
    ByteData data = await rootBundle.load(asset);
    ByteData maskData = await rootBundle.load(mask);

    Codec codec = await instantiateImageCodec(maskData.buffer.asUint8List(),
        targetWidth: w.toInt(), targetHeight: h.toInt());
    FrameInfo fi = await codec.getNextFrame();

    ImageShader shader = ImageShader(
        fi.image, TileMode.clamp, TileMode.clamp, Matrix4.identity().storage);
    Image image = Image.memory(data.buffer.asUint8List(),
        fit: BoxFit.fill, width: w, height: h);
    return [shader, image];
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(3.0)),
          child: Image.asset(
            img,
            width: getProportionateScreenWidth(122),
            fit: BoxFit.fill,
            height: getProportionateScreenHeight(77),
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

class EventsItem extends StatelessWidget {
  EventsItem(
    this.img,
    this.name,
    this.ganar,
  );
  String img;
  String name;
  String ganar;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(
      //   top: getProportionateScreenHeight(8),
      //   bottom: getProportionateScreenHeight(8),
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        //color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(4.0), bottom: Radius.circular(4.0)),
            child: Image.asset(
              img,
              width: getProportionateScreenWidth(200),
              fit: BoxFit.fill,
              height: getProportionateScreenHeight(101),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: ResponsiveFlutter.of(context).fontSize(2.0), //16.0,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            ganar,
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: ResponsiveFlutter.of(context).fontSize(1.5), //12.0,
              color: const Color(0xFFBABABA),
            ),
          ),
        ],
      ),
    );
  }
}
