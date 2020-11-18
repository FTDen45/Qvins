//import 'dart:html';

import 'package:flutter/material.dart';

import 'package:responsive_flutter/responsive_flutter.dart';

import 'package:qvins/screens/create_user/birth/created_user_birth_screen.dart';

class IPhone11ProX75 extends StatelessWidget {
  const IPhone11ProX75({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SizedBox(
        width: MediaQuery.of(context).size.width, //375.0,
        height: MediaQuery.of(context).size.height, //812.0,
        child: Column(
          children: <Widget>[
            // const IOSStatusBarBlack(),
            Container(
              height: MediaQuery.of(context).size.height * 0.044,
            ), //Spacer(flex: 36),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8, //300.0,
              height: MediaQuery.of(context).size.height * 0.044, //36.0,
              child: Text(
                'Личная информация',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize:
                      ResponsiveFlutter.of(context).fontSize(3.75), //30.0,
                  color: const Color(0xFFFD4F6A),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.014,
            ), //Spacer(flex: 12),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8, //173.0,
              height: MediaQuery.of(context).size.height * 0.03, //19.0,
              child: Text(
                'Введите имя и фамилию',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                  color: const Color(0xFFBABABA),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.049,
            ), //Spacer(flex: 40),

            Container(
              //alignment: Alignment(0.02, 0.0),
              width: MediaQuery.of(context).size.width * 0.92, //318
              height: MediaQuery.of(context).size.height * 0.055, //45

              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.032,
                      MediaQuery.of(context).size.height * 0.064 / 2,
                      MediaQuery.of(context).size.width * 0.032,
                      0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE8E8E8),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE8E8E8),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE8E8E8),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  fillColor: Color(0xffffffff),
                  filled: true,
                  //borderSide: BorderSide.none,
                  //borderRadius: BorderRadius.circular(4.0),
                  hintText: '',
                  hintStyle: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: ResponsiveFlutter.of(context).fontSize(2),
                    color: const Color(0xFFBABABA),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: ResponsiveFlutter.of(context).fontSize(2),
                  color: const Color(0xFF222222),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.039,
            ), //Spacer(flex: 32),
            Container(
              width: MediaQuery.of(context).size.width * 0.92, //344.0,
              height: MediaQuery.of(context).size.height * 0.06, //51.0
              //margin: EdgeInsets.only(top: 20, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        //builder: (context) => IPhone11ProX45(),
                        //builder: (context) => IPhone11ProX46(),
                        //builder: (context) => IPhone11ProX59(),
                        builder: (context) => IPhone11ProX88(),
                        //builder: (context) => MyApp(),
                        //builder: (context) => BlockInput(),
                      ));
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
                        maxWidth: MediaQuery.of(context).size.width * 0.92,
                        minHeight: MediaQuery.of(context).size.height * 0.043),
                    alignment: Alignment.center,
                    child: Text(
                      'Продолжить',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: ResponsiveFlutter.of(context).fontSize(2),
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
    );
  }
}
