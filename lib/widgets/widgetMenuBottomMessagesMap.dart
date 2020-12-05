import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:qvins/MyModel.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class widgetMenuBottomMessagesMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyModel>(
      builder: (ctx, numer, child) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //color:Colors.black54,
                height: getProportionateScreenHeight(635),
                width: getProportionateScreenWidth(375),
                child: Stack(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(635),
                      width: getProportionateScreenWidth(375),
                      child: Image.asset('assets/images/img/map.jpg',
                          fit: BoxFit.fill),
                    ),
                    Positioned(
                      top: 130,
                      right: 130,
                      child: GestureDetector(
                        onTap: () {
                          print('friends chat from map!!!');
                        },
                        child: CircleAvatar(
                          radius: getProportionateScreenWidth(25),
                          backgroundColor: Color(0xffFD4F6A),
                          child: CircleAvatar(
                            radius: getProportionateScreenWidth(23),
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: getProportionateScreenWidth(21),
                              backgroundImage: AssetImage(
                                  'assets/images/img/avatar_myfriends_list_01.jpg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 130,
                      left: 130,
                      child: GestureDetector(
                        onTap: () {
                          print('friends chat from map!!!');
                        },
                        child: CircleAvatar(
                          radius: getProportionateScreenWidth(25),
                          backgroundColor: Color(0xffFD4F6A),
                          child: CircleAvatar(
                            radius: getProportionateScreenWidth(23),
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: getProportionateScreenWidth(21),
                              backgroundImage: AssetImage(
                                  'assets/images/img/avatar_myfriends_list_01.jpg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 230,
                      left: 30,
                      child: GestureDetector(
                        onTap: () {
                          print('friends chat from map!!!');
                        },
                        child: CircleAvatar(
                          radius: getProportionateScreenWidth(25),
                          backgroundColor: Color(0xffFD4F6A),
                          child: CircleAvatar(
                            radius: getProportionateScreenWidth(23),
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: getProportionateScreenWidth(21),
                              backgroundImage: AssetImage(
                                  'assets/images/img/avatar_myfriends_list_01.jpg'),
                            ),
                          ),
                        ),
                      ),
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
