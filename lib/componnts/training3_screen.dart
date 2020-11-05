import 'package:flutter/material.dart';

class IPhone11ProX97 extends StatelessWidget {
  const IPhone11ProX97({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Align(
        alignment: Alignment(-0.71, -0.53),
        child: SizedBox(
          width: 1326.0,
          height: 885.0,
          child: Stack(
            children: <Widget>[
              Container(
                // Group: Group 1008
                alignment: Alignment.center,
                width: 1326.0,
                height: 885.0,
                child: Container(
                  width: 1326.0,
                  height: 885.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(''),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: 1326.0,
                    height: 885.0,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.45),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   left: 137.0,
              //   top: 17.0,
              //   child: const IOSStatusBarBlack(),
              // ),
              Positioned(
                left: 258.0,
                bottom: 64.0,
                child: Container(
                  // Group: Home Indicator
                  alignment: Alignment.center,
                  width: 134.0,
                  height: 5.0,
                  child: Container(
                    width: 134.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 252.0,
                top: 96.0,
                child: SizedBox(
                  width: 144.0,
                  height: 36.0,
                  child: Text(
                    'Обучение',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 193.0,
                top: 144.0,
                child: SizedBox(
                  width: 264.0,
                  height: 38.0,
                  child: Text(
                    'Узнайте где находятся Ваши друзья в режиме реального времени',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 16.0,
                      color: const Color(0xFFD1D1D1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 153.0,
                bottom: 122.0,
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
              Positioned(
                left: 230.0,
                bottom: 224.0,
                child: Container(
                  width: 189.0,
                  height: 409.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.0),
                    image: DecorationImage(
                      image: AssetImage(''),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      width: 2.0,
                      color: Colors.black,
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
