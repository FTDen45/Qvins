import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';
import 'package:qvins/screens/myscreen/review_add_screen.dart';

class reviewsShowBottomSheet2 extends StatelessWidget {
  reviewsShowBottomSheet2({
    this.showBottom,
    this.name = 'Кожамниязов Ислам',
  });
  Function showBottom;
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: getProportionateScreenHeight(251),
      child: Column(
        children: [
          Container(
            height: getProportionateScreenHeight(64),
            width: getProportionateScreenWidth(375),
            decoration: BoxDecoration(
              color: Color(0xff674FFD),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(95),
                  height: getProportionateScreenHeight(4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffc4c4c4),
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
                Container(
                  height: getProportionateScreenHeight(13),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize:
                        ResponsiveFlutter.of(context).fontSize(2.25), //18.0,
                    color: Color(0xFFffffff),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: getProportionateScreenWidth(375),
              padding: EdgeInsets.all(getProportionateScreenHeight(16)),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(15)),
                    child: GestureDetector(
                      onTap: () {
                        print('Пригласить в группу !!!');
                      },
                      child: Row(
                        children: [
                          Text(
                            'Пригласить в группу',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2), //16.0,
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/images/img/plus.svg'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(15)),
                    child: GestureDetector(
                      onTap: () {
                        print('Пригласить в чат !!!');
                      },
                      child: Row(
                        children: [
                          Text(
                            'Пригласить в чат',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2), //16.0,
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/images/img/cloud.svg'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(15)),
                    child: GestureDetector(
                      onTap: () {
                        print('Пожаловаться !!!');
                      },
                      child: Row(
                        children: [
                          Text(
                            'Пожаловаться',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2), //16.0,
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/images/img/znak.svg'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(15)),
                    child: GestureDetector(
                      onTap: () {
                        print('Удалить из друзей !!!');
                      },
                      child: Row(
                        children: [
                          Text(
                            'Удалить из друзей',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2), //16.0,
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/images/img/trash.svg'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //color: Colors.white,
          ),
        ],
      ),
    );
  }
}
