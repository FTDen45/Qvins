import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class widgetProfileUserEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: GestureDetector(
                onTap: () {
                  print('center avatar');
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: getProportionateScreenWidth(41),
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage('assets/images/img/avatar_profile_01.jpg'),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Изменить фото профиля',
                        style: TextStyle(
                          color: Color(0xffFD4F6A),
                          fontSize: 18,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: getProportionateScreenHeight(24)),
              height: getProportionateScreenHeight(45),
              child: TextField(
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    enabledBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    border: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    labelText: 'Имя',
                    labelStyle: TextStyle(color: Color(0xffCDCDCD))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: getProportionateScreenHeight(24)),
              height: getProportionateScreenHeight(45),
              child: TextField(
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    enabledBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    border: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    labelText: 'Номер телефона',
                    labelStyle: TextStyle(color: Color(0xffCDCDCD))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: getProportionateScreenHeight(24)),
              height: getProportionateScreenHeight(45),
              child: TextField(
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    enabledBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    border: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    labelText: 'Ваша почта',
                    labelStyle: TextStyle(color: Color(0xffCDCDCD))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: getProportionateScreenHeight(24)),
              //height: getProportionateScreenHeight(45),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    enabledBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    border: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    labelText: 'Био',
                    labelStyle: TextStyle(color: Color(0xffCDCDCD))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: getProportionateScreenHeight(24)),
              height: getProportionateScreenHeight(45),
              child: TextField(
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    suffix: GestureDetector(
                      onTap: () {
                        print('chenge');
                      },
                      child: Text(
                        'Изменить',
                        style: TextStyle(
                          color: Color(0xffFD4F6A),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    enabledBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    border: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    labelText: 'Кто может приглашать Вас в чаты?',
                    labelStyle: TextStyle(color: Color(0xffCDCDCD))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: getProportionateScreenHeight(24)),
              height: getProportionateScreenHeight(45),
              child: TextField(
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    suffix: GestureDetector(
                      onTap: () {
                        print('chenge');
                      },
                      child: Text(
                        'Изменить',
                        style: TextStyle(
                          color: Color(0xffFD4F6A),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    enabledBorder: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    border: OutlineInputBorder(
                        //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color(0xffE3E3E3),
                            width: 1.0) //This is Ignored,
                        ),
                    labelText: 'Кто может следить за мной на карте?',
                    labelStyle: TextStyle(color: Color(0xffCDCDCD))),
              ),
            ),
            Container(
              width: getProportionateScreenWidth(344),
              height: getProportionateScreenHeight(57),
              margin: EdgeInsets.only(bottom: getProportionateScreenHeight(18)),
              child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  print('!!!У вас нет подписки!!!');
                  //showWindow2(context, 'Кожамниязов Ислам11');
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
                      maxWidth: getProportionateScreenWidth(344),
                      minHeight: getProportionateScreenHeight(57),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'У вас нет подписки',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(2), //16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        // Icon(
                        //   Icons.expand_more,
                        //   color: Colors.white,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Повысить подписку!',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize:
                      ResponsiveFlutter.of(context).fontSize(1.625), //13.0,
                  color: Color(0xffBABABA),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
