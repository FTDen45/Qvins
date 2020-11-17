import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'dart:math';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';

import '../create_user/code/send_phone_code_screen.dart';
//import '../create_user/code/block_input.dart';
import 'cuntry_flag_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Country _selectedDialogCountry =
      CountryPickerUtils2.getCountryByPhoneCode('7');

  Country _selectedFilteredDialogCountry =
      CountryPickerUtils2.getCountryByPhoneCode('90');

  Country _selectedCupertinoCountry =
      CountryPickerUtils2.getCountryByIsoCode('tr');

  Country _selectedFilteredCupertinoCountry =
      CountryPickerUtils2.getCountryByIsoCode('DE');

  @override
  Widget build(BuildContext context) {
    void _openCountryPickerDialog() => showDialog(
          context: context,
          builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.pink),
            child: CountryPickerDialog(
              titlePadding: EdgeInsets.all(8.0),
              searchCursorColor: Colors.pinkAccent,
              searchInputDecoration: InputDecoration(
                hintText: 'Search...',
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
              ),
              isSearchable: true,
              title: Text('Select your phone code'),
              onValuePicked: (Country country) =>
                  setState(() => _selectedDialogCountry = country),
              itemBuilder: _buildDialogItem,
              priorityList: [
                CountryPickerUtils2.getCountryByIsoCode('RU'),
                CountryPickerUtils2.getCountryByIsoCode('US'),
              ],
            ),
          ),
        );

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffF8F8F8),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                        ),
                        //Spacer(),
                        Container(
                          child: Text(
                            "Войдите в аккаунт",
                            style: TextStyle(
                              fontSize:
                                  ResponsiveFlutter.of(context).fontSize(3.75),
                              fontFamily: 'SF Pro Display',
                              color: const Color(0xFF222222),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment(-0.01, 0.0),
                        //   child: SizedBox(
                        //     width: 267.0,
                        //     height: 36.0,
                        //     child: Text(
                        //       'Войдите в аккаунт',
                        //       style: TextStyle(
                        //         fontSize: 30.0,
                        //         fontFamily: 'SF Pro Display',
                        //         color: const Color(0xFF222222),
                        //         fontWeight: FontWeight.w700,
                        //       ),
                        //       textAlign: TextAlign.center,
                        //     ),
                        //   ),
                        // ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.009,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Text(
                            'Войдите в аккаунт с помощью номера телефона или социальных сетей',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize:
                                  ResponsiveFlutter.of(context).fontSize(1.7),
                              color: const Color(0xFFBABABA),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.009,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.92,
                          //child: MyCustomForm(),
                        ),
                        Container(
                          // Group: Input
                          //alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.92,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.92,
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  color: Color(0xffffffff),
                                  // Group: Input
                                  //alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width * 0.92,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.92,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    child: Stack(
                                      //alignment: Alignment.bottomLeft,
                                      children: <Widget>[
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.92,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.92,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.06,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color(0xffE8E8E8),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              // border: BoxBorder.lerp Border.all(
                                              //   color: Color(0xffE8E8E8),
                                              //   width: 20,
                                              // ), //BorderSide(color: Color(0xFFE8E8E8),),//const Color(0xFFE8E8E8),
                                            ),
                                          ),

                                          // child: SvgPicture.string(
                                          //   //'assets/images/img/bg_logo_top/kz.svg'
                                          //   // BG
                                          //   '<svg viewBox="16.0 422.0 344.0 50.0" ><path transform="translate(16.0, 422.0)" d="M 0 0 L 344 0 L 344 50 L 0 50 L 0 0 Z" fill="#ffffff" stroke="#e8e8e8" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  left:
                                      MediaQuery.of(context).size.width * 0.32,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.32,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(
                                            MediaQuery.of(context).size.width *
                                                0.032,
                                            MediaQuery.of(context).size.height *
                                                0.064 /
                                                2,
                                            MediaQuery.of(context).size.width *
                                                0.032,
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
                                        hintText: 'Номер телефона',
                                        hintStyle: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize:
                                              ResponsiveFlutter.of(context)
                                                  .fontSize(2),
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
                                        fontSize: ResponsiveFlutter.of(context)
                                            .fontSize(2),
                                        color: const Color(0xFF222222),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: _openCountryPickerDialog,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.037),
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.32,
                                    //color: Color(0xffff0000),
                                    child: _buildDialogItem2(
                                      _selectedDialogCountry,
                                      context,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.019,
                        ),
                        //Button next
                        Container(
                          width: MediaQuery.of(context).size.width * 0.92,
                          height: MediaQuery.of(context).size.height * 0.06,
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    //builder: (context) => IPhone11ProX45(),
                                    //builder: (context) => IPhone11ProX46(),
                                    //builder: (context) => IPhone11ProX59(),
                                    builder: (context) => IPhone11ProX44(),
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
                                    maxWidth:
                                        MediaQuery.of(context).size.width *
                                            0.92,
                                    minHeight:
                                        MediaQuery.of(context).size.height *
                                            0.043),
                                alignment: Alignment.center,
                                child: Text(
                                  'Продолжить',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: ResponsiveFlutter.of(context)
                                        .fontSize(2),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height * 0.019,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.78,
                          height: MediaQuery.of(context).size.height * 0.02,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Проблемы со входом в аккаунт? ',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize:
                                    ResponsiveFlutter.of(context).fontSize(1.5),
                                color: const Color(0xFFBABABA),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Восстановить",
                                  style: TextStyle(
                                    color: const Color(0xFFFD4F6A),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap =
                                        () => {print('!!!Восстановить!!!')},
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.019,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.92,
                          //color: Color(0xff0000ff),
                          // Group: Или + линий
                          alignment: Alignment.center,
                          //width: double.infinity,

                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment(0.0, -0.03),
                                child: Transform.rotate(
                                  angle: 180.0 * pi / 180,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.394,
                                    height: 0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.0,
                                        color: Colors.grey[350],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.027,
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.075,
                                child: Center(
                                  child: Text(
                                    'ИЛИ',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: ResponsiveFlutter.of(context)
                                          .fontSize(1.5),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.027,
                              ),
                              Align(
                                alignment: Alignment(0.0, -0.03),
                                child: Transform.rotate(
                                  angle: 180.0 * pi / 180,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.394,
                                    height: 0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.0,
                                        color: Colors.grey[350],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height * 0.0019,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.744, //279.0,
                          height:
                              MediaQuery.of(context).size.height * 0.04, //33.0,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Войдите с помощью ',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.75),
                                color: const Color(0xFFBABABA),
                                //height: 2.36,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "социальных сетей",
                                  style: TextStyle(
                                    color: const Color(0xFFFD4F6A),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap =
                                        () => {print('!!!социальных сетей!!!')},
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0019,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.357, //134.0,
                          height:
                              MediaQuery.of(context).size.width * 0.09, //34.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // const Google(),
                              InkWell(
                                onTap: () {
                                  print('const Google()');
                                },
                                child: SvgPicture.asset(
                                  'assets/images/img/bg_logo_top/Google.svg',
                                  width:
                                      MediaQuery.of(context).size.width * 0.09,
                                  height:
                                      MediaQuery.of(context).size.width * 0.09,
                                  // width: 100,
                                  //height: 100,
                                  // height: MediaQuery.of(context)
                                  //         .size
                                  //         .width *
                                  //     0.09,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // const VK(),
                              InkWell(
                                onTap: () {
                                  print('const VK()');
                                },
                                child: SvgPicture.asset(
                                  'assets/images/img/bg_logo_top/VK.svg',
                                  width:
                                      MediaQuery.of(context).size.width * 0.09,
                                  height:
                                      MediaQuery.of(context).size.width * 0.09,
                                  // width: 100,
                                  //height: 100,
                                  // height: MediaQuery.of(context)
                                  //         .size
                                  //         .width *
                                  //     0.09,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // const Facebook(),
                              InkWell(
                                onTap: () {
                                  print('const Facebook()');
                                },
                                child: SvgPicture.asset(
                                  'assets/images/img/bg_logo_top/Facebook.svg',
                                  width:
                                      MediaQuery.of(context).size.width * 0.09,
                                  height:
                                      MediaQuery.of(context).size.width * 0.09,
                                  // width: 100,
                                  //height: 100,
                                  // height: MediaQuery.of(context)
                                  //         .size
                                  //         .width *
                                  //     0.09,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Spacer(flex: 1),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.917, //344.0,
                          height:
                              MediaQuery.of(context).size.height * 0.1, //45.0,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text:
                                  'Создавая аккаунт в Терри, вы соглашаетесь с политикой конфиденциальности и даете согласие на обработку персональных данных',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.75),
                                color: const Color(0xFFBABABA),
                                //height: 2.36,
                              ),
                              children: <TextSpan>[],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    //height: 89.43,
                    child: SvgPicture.asset(
                      'assets/images/img/bg_logo_top/1.svg',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.369,
                      //height: MediaQuery.of(context).size.height * 0.37,
                      //color: Color(0xffFD4F6A),
                      //semanticsLabel: 'A red up arrow',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    //height: 89.43,
                    child: SvgPicture.asset(
                      'assets/images/img/bg_logo_top/2.svg',
                      width: MediaQuery.of(context).size.width * 0.78,
                      height: MediaQuery.of(context).size.height * 0.347,
                      fit: BoxFit.fill,
                      //color: Color(0xffFD4F6A),
                      //semanticsLabel: 'A red up arrow',
                    ),
                    // Image.asset(
                    //   'assets/images/img/bg_logo_top/e2.png',
                    //   width: MediaQuery.of(context).size.width * 0.82,
                    //   fit: BoxFit.cover,
                    //   //color: Color(0xffFD4F6A),
                    //   //semanticsLabel: 'A red up arrow',
                    // ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.width * 0.16,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    //width: MediaQuery.of(context).size.width,
                    //height: 89.43,
                    child: SvgPicture.asset(
                      'assets/images/img/bg_logo_top/q.svg',
                      width: MediaQuery.of(context).size.width * 0.36,
                    ),
                  ),
                ),
              ],
            ),

            //top: 0,
            //top: 0,
            //bottom: 0,
            //alignment: Alignment.center,

            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment:
            //     CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}

Widget _buildDialogItem(Country country) => Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),

        SizedBox(width: 8.0),
        Text("+${country.phoneCode}"),
        SizedBox(width: 8.0),
        //Flexible(child: Text(country.name))
      ],
    );
Widget _buildDialogItem2(Country country, context) => Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CountryPickerUtils2.getDefaultFlagImage(country, context),
        SizedBox(width: 8.0),
        Text(
          "+${country.phoneCode}",
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: ResponsiveFlutter.of(context).fontSize(2),
            color: const Color(0xFFBABABA),
            fontWeight: FontWeight.normal,
          ),
        ),
        //SizedBox(width: 8.0),
        //Flexible(child: Text(country.name))
      ],
    );
