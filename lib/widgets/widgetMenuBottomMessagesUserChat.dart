import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class widgetMenuBottomMessagesUserChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(719),
      color: Color(0xffFAFAFA),
      child: Column(
        children: [
          Expanded(
            //color: Colors.black,
            //height: getProportionateScreenHeight(719),
            child: Stack(
              children: [
                Container(
                  //color: Colors.black12,
                  width: getProportionateScreenWidth(375),
                  height: getProportionateScreenHeight(660),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Comment(
                            messeg:
                                'Почему ты не пришел на наше первое свидание? Я ведь ждала тебя!',
                            you: false,
                          ),
                          Comment(
                            messeg:
                                'Извини, не получилось! Застрял в пробке и потом птичка поднасрала, пришлось возвращаться',
                            you: true,
                          ),
                          Comment(
                            messeg:
                                'Так обидно, ладно, ничего.. Бывает! Можем встретимся сегодня?😏',
                            you: false,
                          ),
                          Comment(
                            messeg: 'Аууу!!!',
                            you: false,
                          ),
                          Comment(
                            messeg: 'Ну что там? Хэй! Я вообще-то жду ответа!',
                            you: false,
                          ),
                          Comment(
                            messeg:
                                'Да блин! Чего ты такая паникерша? Я просто отошел.. Да, без проблем. Куда пойдем, есть идеи?',
                            you: true,
                          ),
                          Comment(
                            messeg:
                                'Недавно была с подругами в классном заведений “У Михалыча”, звучит интересно и там можно будет остаться на ночь, если понадобится. Там так-же есть конные прогулки! Ну как, пойдем?',
                            you: false,
                          ),
                          Comment(
                            messeg:
                                'Да, без проблем, пошли! Завтра встретимся возле твоего дома, около 19:00?',
                            you: true,
                          ),
                          Comment(
                            messeg:
                                'Да, без проблем, пошли! Завтра встретимся возле твоего дома, около 19:00?',
                            you: true,
                          ),
                          Comment(
                            messeg:
                                'Да, без проблем, пошли! Завтра встретимся возле твоего дома, около 19:00?',
                            you: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: getProportionateScreenHeight(0),
                  child: Container(
                    color: Colors.white,
                    //margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(
                        //vertical: getProportionateScreenHeight(10),
                        horizontal: MediaQuery.of(context).size.width *
                            0.026 //getProportionateScreenHeight(16),
                        ),

                    height: getProportionateScreenHeight(61),
                    width: getProportionateScreenWidth(375),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(10),
                            //horizontal: getProportionateScreenHeight(16),
                          ),
                          // constraints: BoxConstraints(
                          //     minWidth: 200,
                          //     maxWidth: getProportionateScreenWidth(375)),
                          width: MediaQuery.of(context).size.width * 0.78,
                          child: TextField(
                            style: TextStyle(
                              fontFamily: 'SF UI Text',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(1.75), //14.0,
                              color: const Color(0xFF222222),
                            ),
                            decoration: InputDecoration(
                                //icon: Icon(Icons.ac_unit),
                                suffixIcon: IconButton(
                                    icon: Icon(Icons.send,
                                        color: Color(0xffFD4F6A)),
                                    onPressed: () {
                                      debugPrint('send TextField Chat');
                                    }),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffBABABA),
                                    width: 0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffBABABA),
                                    width: 0,
                                  ),
                                ),
                                fillColor: Color(0xffF9F9F9),
                                filled: true,
                                hintText: 'Написать сообщение',
                                hintStyle: TextStyle(
                                  fontFamily: 'SF UI Text',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.75), //14.0,
                                  color: const Color(0xFFBABABA),
                                  fontWeight: FontWeight.w500,
                                ),
                                contentPadding: EdgeInsets.only(
                                  bottom: getProportionateScreenHeight(40) /
                                      2, // HERE THE IMPORTANT PART
                                  left: getProportionateScreenWidth(10),
                                )),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.mic,
                            color: Color(0xffBABABA),
                            size: MediaQuery.of(context).size.width * 0.1,
                          ),
                          onPressed: () {
                            debugPrint('Microphone');
                          },
                          iconSize: MediaQuery.of(context).size.width * 0.1,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Comment extends StatelessWidget {
  Comment({this.you, this.messeg});
  bool you;
  String messeg;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(8)),
      child: Row(
        mainAxisAlignment:
            you ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
                minWidth: getProportionateScreenWidth(74),
                maxWidth: getProportionateScreenWidth(283)),
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(12),
                horizontal: getProportionateScreenWidth(12)),
            decoration: BoxDecoration(
              color: you ? Color(0xffF4F4F4) : Color(0xffFD4F6A),
              borderRadius: you
                  ? BorderRadius.only(
                      topLeft: Radius.circular(35),
                      bottomLeft: Radius.circular(35),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
            ),
            child: Text(
              messeg,
              style: you
                  ? TextStyle(
                      fontFamily: 'SF UI Text',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(2), //16.0,
                      color: const Color(0xFF222222),
                    )
                  : TextStyle(
                      fontFamily: 'SF UI Text',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(2), //16.0,
                      color: Colors.white,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
