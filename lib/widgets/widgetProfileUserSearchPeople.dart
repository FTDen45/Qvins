import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class widgetProfileUserSearchPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: getProportionateScreenHeight(400),
      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Выбран 1 человек',
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
              color: Color(0xFF222222),
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            width: getProportionateScreenWidth(344),
            margin: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(24)),
            child: TextFormField(
              //initialValue: 'abc',
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search, color: Color(0xffBABABA)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffBABABA),
                  width: 0,
                )),
                hintText: 'Поиск по друзьям',
                hintStyle: TextStyle(color: Color(0xffBABABA)),
                // prefix: Text('Prefix'),
                // suffix: Text('Suffix'),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffBABABA),
                  width: 0,
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffBABABA),
                  width: 0,
                )),
              ),
            ),
          ),
          Container(
            height: getProportionateScreenHeight(486),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MyFriendsList(
                    img: 'assets/images/img/avatar_myfriends_list_01.jpg',
                    name: 'Кожамниязов Ислам',
                  ),
                  MyFriendsList(
                    img: 'assets/images/img/avatar_myfriends_list_01.jpg',
                    name: 'Кожамниязов Ислам',
                  ),
                  MyFriendsList(
                    img: 'assets/images/img/avatar_myfriends_list_01.jpg',
                    name: 'Кожамниязов Ислам',
                  ),
                  MyFriendsList(
                    img: 'assets/images/img/avatar_myfriends_list_01.jpg',
                    name: 'Кожамниязов Ислам',
                  ),
                  MyFriendsList(
                    img: 'assets/images/img/avatar_myfriends_list_01.jpg',
                    name: 'Кожамниязов Ислам',
                  ),
                  MyFriendsList(
                    img: 'assets/images/img/avatar_myfriends_list_01.jpg',
                    name: 'Кожамниязов Ислам',
                  ),
                  MyFriendsList(
                    img: 'assets/images/img/avatar_myfriends_list_01.jpg',
                    name: 'Кожамниязов Ислам',
                  ),
                  MyFriendsList(
                    img: 'assets/images/img/avatar_myfriends_list_01.jpg',
                    name: 'Кожамниязов Ислам',
                  ),
                  MyFriendsList(
                    img: 'assets/images/img/avatar_myfriends_list_01.jpg',
                    name: 'Кожамниязов Ислам',
                  ),
                ],
              ),
            ),
          ),
        ],
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
            //SvgPicture.asset('assets/images/img/message_friends.svg')
            Icon(
              Icons.check_box_outline_blank,
              size: 20,
              color: Color(0xffBABABA),
            )
          ],
        ),
      ),
    );
  }
}
