import 'package:flutter/material.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:jiffy/jiffy.dart';

import 'package:qvins/screens/create_user/birth/text_field_birth.dart';
import 'package:qvins/screens/create_user/gender/created_user_perfomance_screen.dart';

class IPhone11ProX88 extends StatefulWidget {
  const IPhone11ProX88({Key key}) : super(key: key);

  @override
  _IPhone11ProX88State createState() => _IPhone11ProX88State();
}

class _IPhone11ProX88State extends State<IPhone11ProX88> {
  String birthday;
  bool colorTextError;
  @override
  void initState() {
    super.initState();
    birthday = '';
    colorTextError = false;
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
                'Сколько Вам лет?',
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
                'Укажите свой возраст',
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
            //pin
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PinEntryTextField(
                  context: context,
                  fields: 8,
                  fieldWidth: MediaQuery.of(context).size.width * 0.085, //32
                  fieldHeight: MediaQuery.of(context).size.height * 0.044, //36
                  margin: MediaQuery.of(context).size.width * 0.025,
                  //padding: MediaQuery.of(context).size.height * 0.091,
                  styleText: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize:
                        ResponsiveFlutter.of(context).fontSize(3.75), //30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    //height: 1,
                  ),
                  showFieldAsBox: false,
                  onSubmit: (String dateBirth) {
                    //print(dateBirth);
                    var date_text = Jiffy(dateBirth).fromNow();
                    //print(date_text);
                    String date_num = date_text.replaceAll(" years ago", "");
                    //print(date_num);
                    setState(() {
                      if (int.parse(date_num) < 18) {
                        colorTextError = true;
                        birthday =
                            'Чтобы зарегистрироваться в Терри, нужно быть старше 18 лет';
                      } else {
                        colorTextError = false;
                        birthday =
                            'Ого, Вам уже больше 18! Давай к нам, мы подберем тебе идеального собеседника';
                      }
                    });
                    if (dateBirth == '1111') {}
                  }, // end onSubmit
                ), // end PinEntryTextField()
              ), // end Padding()
            ),
            //end
            Container(
              height: MediaQuery.of(context).size.height * 0.039,
            ), //Spacer(flex: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.914, //343.0,
              height: MediaQuery.of(context).size.height * 0.05, //34.0,
              child: Text(
                birthday,
                //'Чтобы зарегистрироваться в Терри, нужно быть старше 18 лет',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize:
                      ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
                  color: colorTextError ? Color(0xFFCF3C3C) : Color(0xFF3BC341),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //Spacer(flex: 20),
            //Spacer(flex: 74),
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
                        builder: (context) => IPhone11ProX118(),
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
