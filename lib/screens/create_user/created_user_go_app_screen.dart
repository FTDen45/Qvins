import 'package:flutter/material.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/screens/create_user/wishes/created_user_go_men_screen.dart';

class CreateUserGoAppScreen extends StatefulWidget {
  const CreateUserGoAppScreen({Key key}) : super(key: key);

  @override
  _CreateUserGoAppScreenState createState() => _CreateUserGoAppScreenState();
}

class _CreateUserGoAppScreenState extends State<CreateUserGoAppScreen> {
  bool GoingToBar;
  bool RelaxInTheClub;
  bool DrinkInCompany;
  bool GoConcertOrEvent;

  String birthday2;
  @override
  void initState() {
    super.initState();
    GoingToBar = false;
    RelaxInTheClub = false;
    DrinkInCompany = false;
    GoConcertOrEvent = false;

    birthday2 = '';
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
              height: MediaQuery.of(context).size.height * 0.05, //36.0,
              child: Text(
                'Для чего Вам Терри?',
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
              width: MediaQuery.of(context).size.width * 0.7, //173.0,
              height: MediaQuery.of(context).size.height * 0.15, //57.0
              child: Text(
                'Выберите пожалуйста для чего Вы скачали наше приложение, может вы хотите провести замечательный вечер или просто найти себе  классных друзей',
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
                    GoingToBar = !GoingToBar;
                    birthday2 = '';
                  });
                },
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: GoingToBar
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xff7C4FFD),
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
                      'Поход в бар ',
                      style: GoingToBar
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
                    RelaxInTheClub = !RelaxInTheClub;
                    birthday2 = '';
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: RelaxInTheClub
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xff7C4FFD),
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
                      'Отдохнуть в клубе ',
                      style: RelaxInTheClub
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
                    DrinkInCompany = !DrinkInCompany;
                    birthday2 = '';
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: DrinkInCompany
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xff7C4FFD),
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
                      'Выпить в компании',
                      style: DrinkInCompany
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
                    GoConcertOrEvent = !GoConcertOrEvent;
                    birthday2 = '';
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: GoConcertOrEvent
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xff7C4FFD),
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
                      'Посетить концерт/мероприятие',
                      style: GoConcertOrEvent
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
              height: MediaQuery.of(context).size.height * 0.039,
            ), //Spacer(flex: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.914, //343.0,
              height: MediaQuery.of(context).size.height * 0.05, //34.0,
              child: Text(
                '${birthday2}',
                //'Чтобы зарегистрироваться в Терри, нужно быть старше 18 лет',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize:
                      ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
                  color: Color(0xFFCF3C3C),
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
                elevation: 0,
                onPressed: () {
                  if (GoingToBar == false &&
                      RelaxInTheClub == false &&
                      DrinkInCompany == false &&
                      GoConcertOrEvent == false) {
                    setState(() {
                      birthday2 =
                          'Выберите один из вариантов, чтобы мы смогли подобрать подходящих Вам людей';
                    });
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          //builder: (context) => IPhone11ProX45(),
                          //builder: (context) => IPhone11ProX46(),
                          //builder: (context) => IPhone11ProX59(),
                          builder: (context) => CreatedUserGoMenWomenScreen(),
                          //builder: (context) => MyApp(),
                          //builder: (context) => BlockInput(),
                        ));
                  }
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
