import 'package:flutter/material.dart';

class IPhone11ProX77 extends StatelessWidget {
  const IPhone11ProX77({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SizedBox(
        width: 375.0,
        height: 812.0,
        child: Column(
          children: <Widget>[
            // const IOSStatusBarBlack(),
            Spacer(flex: 36),
            SizedBox(
              width: 301.0,
              height: 36.0,
              child: Text(
                'Для чего Вам Терри?',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 30.0,
                  color: const Color(0xFFFD4F6A),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(flex: 12),
            Align(
              alignment: Alignment(0.03, 0.0),
              child: SizedBox(
                width: 344.0,
                height: 76.0,
                child: Text(
                  'Выберите пожалуйста для чего Вы скачали наше приложение, может вы хотите провести замечательный вечер или просто найти себе  классных друзей',
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 16.0,
                    color: const Color(0xFFBABABA),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Spacer(flex: 24),
            Align(
              alignment: Alignment(0.03, 0.0),
              child: Container(
                // Group: Кнопки
                alignment: Alignment.center,
                width: 344.0,
                height: 248.0,
                child: SizedBox(
                  width: 344.0,
                  height: 248.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        // Group: кнопка
                        alignment: Alignment.center,
                        width: 344.0,
                        height: 50.0,
                        child: Container(
                          alignment: Alignment(0.0, -0.03),
                          width: 344.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            border: Border.all(
                              width: 1.0,
                              color: const Color(0xFFBABABA),
                            ),
                          ),
                          child: SizedBox(
                            width: 96.0,
                            height: 21.0,
                            child: Text(
                              'Поход в бар ',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 18.0,
                                color: const Color(0xFFBABABA),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // Group: кнопка
                        alignment: Alignment.center,
                        width: 344.0,
                        height: 50.0,
                        child: Container(
                          alignment: Alignment(0.0, -0.03),
                          width: 344.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            border: Border.all(
                              width: 1.0,
                              color: const Color(0xFFB1B1B1),
                            ),
                          ),
                          child: SizedBox(
                            width: 148.0,
                            height: 21.0,
                            child: Text(
                              'Отдохнуть в клубе ',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 18.0,
                                color: const Color(0xFFBABABA),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // Group: кнопка
                        alignment: Alignment.center,
                        width: 344.0,
                        height: 50.0,
                        child: Container(
                          alignment: Alignment(0.0, -0.03),
                          width: 344.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            border: Border.all(
                              width: 1.0,
                              color: const Color(0xFFB1B1B1),
                            ),
                          ),
                          child: SizedBox(
                            width: 154.0,
                            height: 21.0,
                            child: Text(
                              'Выпить в компании ',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 18.0,
                                color: const Color(0xFFBABABA),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // Group: кнопка
                        alignment: Alignment.center,
                        width: 344.0,
                        height: 50.0,
                        child: Container(
                          alignment: Alignment(0.01, -0.03),
                          width: 344.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            border: Border.all(
                              width: 1.0,
                              color: const Color(0xFFB1B1B1),
                            ),
                          ),
                          child: SizedBox(
                            width: 257.0,
                            height: 21.0,
                            child: Text(
                              'Посетить концерт/мероприятие',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 18.0,
                                color: const Color(0xFFBABABA),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(flex: 16),
            SizedBox(
              width: 343.0,
              height: 34.0,
              child: Text(
                'Выберите один из вариантов, чтобы мы смогли подобрать подходящих Вам людей',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 14.0,
                  color: const Color(0xFFCF3C3C),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(flex: 16),
            Align(
              alignment: Alignment(0.03, 0.0),
              child: Container(
                // Group: Кнопка
                alignment: Alignment.center,
                width: 344.0,
                height: 51.0,
                child: Container(
                  alignment: Alignment.center,
                  width: 344.0,
                  height: 51.0,
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
                  child: SizedBox(
                    width: 95.0,
                    height: 37.0,
                    child: Text(
                      'Продолжить',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 2.31,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(flex: 206),
            Container(
              // Group: Home Indicator
              alignment: Alignment.center,
              width: 134.0,
              height: 5.0,
              child: Container(
                width: 134.0,
                height: 5.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.black,
                ),
              ),
            ),
            Spacer(flex: 8),
          ],
        ),
      ),
    );
  }
}
