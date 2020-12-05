import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class widgetProfileAllAlbomesEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(375),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.asset('assets/images/img/edit_album_main_img.jpg',
                  width: getProportionateScreenWidth(375), fit: BoxFit.cover),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        'Загрузить  обложку альбома',
                        style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display'),
                      decoration: InputDecoration(
                        //border: OutlineInputBorder(),
                        hintText: 'Введите название альбома',
                        hintStyle: TextStyle(
                            color: Color(0xff222222),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display'),

                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE2E2E2),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE2E2E2),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        'Загрузить фотографии',
                        style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: getProportionateScreenWidth(3)),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('add foto');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  right: getProportionateScreenWidth(3)),
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                              color: Color(0xff674FFD),
                              child: Icon(Icons.add,
                                  color: Colors.white,
                                  size: getProportionateScreenWidth(36)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_01.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_02.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_01.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(0)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_02.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: getProportionateScreenWidth(3)),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_02.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_01.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_03.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_02.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(0)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_03.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: getProportionateScreenWidth(3)),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_02.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_01.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(3)),
                            width: getProportionateScreenWidth(65),
                            height: getProportionateScreenHeight(65),
                            //color: Color(0xff674FFD),
                            child: Image.asset(
                              'assets/images/img/add_foto_albom_03.jpg',
                              fit: BoxFit.cover,
                              width: getProportionateScreenWidth(65),
                              height: getProportionateScreenHeight(65),
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
        ),
      ),
    );
  }
}
