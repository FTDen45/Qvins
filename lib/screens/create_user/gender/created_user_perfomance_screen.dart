import 'package:flutter/material.dart';

import 'package:responsive_flutter/responsive_flutter.dart';

import 'package:qvins/screens/create_user/created_user_go_app_screen.dart';

class IPhone11ProX118 extends StatefulWidget {
  const IPhone11ProX118({Key key}) : super(key: key);

  @override
  _IPhone11ProX118State createState() => _IPhone11ProX118State();
}

class _IPhone11ProX118State extends State<IPhone11ProX118> {
  bool WomenButton;
  bool MenButton;

  @override
  void initState() {
    super.initState();
    WomenButton = false;
    MenButton = false;
  }

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
                'Ваш пол?',
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
              height: MediaQuery.of(context).size.height * 0.09, //57.0
              child: Text(
                'Выберите свой пол, чтобы мы смогли определить людей, которых Вам стоит подобрать',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                  color: const Color(0xFFBABABA),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.035, //29
            ),
            //Button next
            Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: MediaQuery.of(context).size.height * 0.06,
              //margin: EdgeInsets.only(top: 20, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    if (WomenButton == false && MenButton == false) {
                      WomenButton = !WomenButton;
                    } else {
                      WomenButton = true;
                      MenButton = false;
                    }
                  });
                },
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: WomenButton
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xffD61F3B),
                        )
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xffF4F4F4),
                          border: Border.all(
                            color: Color(0xffBABABA),
                          ),
                        ),
                  child: Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.92,
                        minHeight: MediaQuery.of(context).size.height * 0.043),
                    alignment: Alignment.center,
                    child: Text(
                      'Я - девушка',
                      style: WomenButton
                          ? TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2.25), //18.0,
                              color: const Color(0xFFffffff),
                              fontWeight: FontWeight.w500,
                            )
                          : TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2.25), //18.0,
                              color: const Color(0xFFBABABA),
                              fontWeight: FontWeight.w500,
                            ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.02, //29
            ),
            //Button next
            Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: MediaQuery.of(context).size.height * 0.06,
              //margin: EdgeInsets.only(top: 20, bottom: 20),
              child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  setState(() {
                    if (WomenButton == false && MenButton == false) {
                      MenButton = !MenButton;
                    } else {
                      MenButton = true;
                      WomenButton = false;
                    }
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: MenButton
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xff2593E2),
                        )
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xffF4F4F4),
                          border: Border.all(
                            color: Color(0xffBABABA),
                          ),
                        ),
                  child: Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.92,
                        minHeight: MediaQuery.of(context).size.height * 0.043),
                    alignment: Alignment.center,
                    child: Text(
                      'Я - парень',
                      style: MenButton
                          ? TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2.25), //18.0,
                              color: const Color(0xFFffffff),
                              fontWeight: FontWeight.w500,
                            )
                          : TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(2.25), //18.0,
                              color: const Color(0xFFBABABA),
                              fontWeight: FontWeight.w500,
                            ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.035, //29
            ),
            //Button next
            Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: MediaQuery.of(context).size.height * 0.06,
              //margin: EdgeInsets.only(top: 20, bottom: 20),
              child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        //builder: (context) => IPhone11ProX45(),
                        //builder: (context) => IPhone11ProX46(),
                        //builder: (context) => IPhone11ProX59(),
                        builder: (context) => IPhone11ProX91(),
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
