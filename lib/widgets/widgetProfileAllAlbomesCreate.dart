import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class widgetProfileAllAlbomesCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black45,
      //height: getProportionateScreenHeight(200),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  'Загрузить  обложку альбома',
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
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
                  ],
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
                margin: EdgeInsets.only(bottom: getProportionateScreenWidth(3)),
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
                margin: EdgeInsets.only(bottom: getProportionateScreenWidth(3)),
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
                width: getProportionateScreenWidth(344),
                height: getProportionateScreenHeight(51),
                margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(10),
                  bottom: getProportionateScreenHeight(10),
                ),
                child: RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    print('!!!Создать новый альбом!!!');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ReviewAddScreen()),
                    // );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment(-1.0, 5.49),
                        colors: [
                          const Color(0xFFFFD4F6A),
                          const Color(0xFFFDA34F)
                        ],
                      ),
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth: getProportionateScreenWidth(344),
                          minHeight: getProportionateScreenHeight(51)),
                      alignment: Alignment.center,
                      child: Text(
                        'Создать новый альбом',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize:
                              ResponsiveFlutter.of(context).fontSize(2), //16.0,
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
          ),
        ],
      ),
    );
  }
}
