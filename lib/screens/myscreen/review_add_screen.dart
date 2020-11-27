import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class ReviewAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * 0.16,
          elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Color(0xffBABABA),size:MediaQuery.of(context).size.width * 0.08)),
        centerTitle: true,
        title: Text(
          'Оставить отзыв',
          style: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: ResponsiveFlutter.of(context).fontSize(2.25), //18.0,
            color: const Color(0xFF222222),
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color(0xffF4F4F4),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Написать отзыв',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                  color: const Color(0xFF222222),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(10),
                  bottom: getProportionateScreenHeight(10),
                ),
                child: TextField(
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize:
                        ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
                    color: const Color(0xFF222222),
                  ),
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Введите сообщение",
                    hintStyle: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
                      color: const Color(0xFFBABABA),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE3E3E3),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE3E3E3),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
              ),
              Text(
                'Поставить оценку',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                  color: const Color(0xFF222222),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, size: ResponsiveFlutter.of(context).fontSize(3), color: Color(0xffFFB800)),
                  Icon(Icons.star, size: ResponsiveFlutter.of(context).fontSize(3), color: Color(0xffFFB800)),
                  Icon(Icons.star, size: ResponsiveFlutter.of(context).fontSize(3), color: Color(0xffFFB800)),
                  Icon(Icons.star, size: ResponsiveFlutter.of(context).fontSize(3), color: Color(0xffBABABA)),
                  Icon(Icons.star, size: ResponsiveFlutter.of(context).fontSize(3), color: Color(0xffBABABA)),
                ],
              ),
              //Button next
              Container(
                width: getProportionateScreenWidth(344),
                height: getProportionateScreenHeight(41),
                margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
                child: RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    print('!!!Отправить!!!');
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
                          minHeight: getProportionateScreenHeight(41)),
                      alignment: Alignment.center,
                      child: Text(
                        'Отправить',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.75), //14.0,
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
        ),
      ),
    );
  }
}
