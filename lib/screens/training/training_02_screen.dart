import 'package:flutter/material.dart';

import 'package:responsive_flutter/responsive_flutter.dart';

import 'package:qvins/screens/training/training_03_screen.dart';

class TrainingHelp02 extends StatelessWidget {
  const TrainingHelp02({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img/screen_training_02.jpg'),
            fit: BoxFit.fill,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.darken ),
          ),
        ),
        width: MediaQuery.of(context).size.width, //375.0,
        height: MediaQuery.of(context).size.height, //812.0,

        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.044, //167.0,
            ),
            Text(
              'Обучение',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: ResponsiveFlutter.of(context).fontSize(3.75), //30.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.024, //167.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.92, //344.0,
              height: MediaQuery.of(context).size.height * 0.13, //57.0,
              child: Text(
                'Вы всегда сможете изменить фильтр: возрастной диапазон, дистанция и пол',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                  color: const Color(0xFFD1D1D1),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.06, //49
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/img/screen_training_02_center_img.png'),
                  fit: BoxFit.fill,
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.504, //189,
              height: MediaQuery.of(context).size.height * 0.505, //410,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.064, //52
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
                        builder: (context) => TrainingHelp03(),
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
