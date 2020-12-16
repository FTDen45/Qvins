import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import 'package:qvins/screens/create_user/name/created_user_name_screen.dart';
import 'package:qvins/screens/create_user/code/text_field.dart';

class IPhone11ProX44 extends StatefulWidget {
  const IPhone11ProX44({Key key}) : super(key: key);

  @override
  _IPhone11ProX44State createState() => _IPhone11ProX44State();
}

class _IPhone11ProX44State extends State<IPhone11ProX44> {
  bool requestSms = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            //Spacer(flex: 83),
            Container(
              height: MediaQuery.of(context).size.height * 0.102,
            ),
            Align(
              //alignment: Alignment(0.03, 0.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.92, //344.0,
                height: MediaQuery.of(context).size.height * 0.4, //322.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      // Group: Контент
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.92, //
                      height: MediaQuery.of(context).size.height * 0.4, //322.0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.92, //
                        height:
                            MediaQuery.of(context).size.height * 0.4, //322.0,
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(0.03, 0.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    0.81, //305.0,
                                height: MediaQuery.of(context).size.height *
                                    0.044, //36.0,
                                child: Text(
                                  'Введите код доступа',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: ResponsiveFlutter.of(context)
                                        .fontSize(3.75), //30.0,
                                    color: const Color(0xFFFD4F6A),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            //Spacer(flex: 8),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Align(
                              alignment: Alignment(0.02, 0.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    0.744, //279.0,
                                height: MediaQuery.of(context).size.height *
                                    0.055, //38.0,
                                child: Text.rich(
                                  TextSpan(
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontSize: ResponsiveFlutter.of(context)
                                          .fontSize(2), //16.0,
                                      color: const Color(0xFF222222),
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Мы отправили вам смс с кодом потверждения на',
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '+7 (708) 371-28-80',
                                        style: TextStyle(
                                          color: const Color(0xFFFD4F6A),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            //Spacer(flex: 28),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.034,
                            ),
                            //pin
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: PinEntryTextField(
                                  fieldWidth:
                                      MediaQuery.of(context).size.width * 0.11,
                                  fieldHeight:
                                      MediaQuery.of(context).size.height * 0.1,
                                  margin:
                                      MediaQuery.of(context).size.width * 0.025,
                                  padding: MediaQuery.of(context).size.height *
                                      0.091,
                                  styleText: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: ResponsiveFlutter.of(context)
                                        .fontSize(3.5), //28.0,
                                    color: const Color(0xFF222222),
                                    letterSpacing: 1.0000000305175782,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5,
                                  ),
                                  showFieldAsBox: true,
                                  onSubmit: (String pin) {
                                    if (pin == '111111') {
                                      createAlertDialogPrivacyPolicy(
                                          context,
                                          Icon(
                                            Icons.check_rounded,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.064,
                                            color: Color(0xff3BC341),
                                          ),
                                          'Успешно',
                                          Color(0xff3BC341),
                                          'Теперь Вы можете продолжить регистрацию аккаунта. Cпасибо что выбрали Терри!');
                                    } else {
                                      createAlertDialogPrivacyPolicy(
                                          context,
                                          Icon(
                                            Icons.clear,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.064,
                                            color: Color(0xffCF3C3C),
                                          ),
                                          'Провал :(',
                                          Color(0xffCF3C3C),
                                          'Такого кода не существует. Может вы ошиблись? Попробуйте еще раз');
                                    }
                                  }, // end onSubmit
                                ), // end PinEntryTextField()
                              ), // end Padding()
                            ),
                            //Spacer(flex: 32),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.003,
                            ),
                            requestSms
                                ? Align(
                                    alignment: Alignment(0.01, 0.0),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.68, //255.0,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02, //14.0,
                                      child: InkWell(
                                        onTap: () {
                                          print('!!!Запрос код повторно!!!');
                                        },
                                        child: Text(
                                          'Запросить код повторно',
                                          style: TextStyle(
                                            fontFamily: 'SF Pro Display',
                                            fontSize:
                                                ResponsiveFlutter.of(context)
                                                    .fontSize(1.5), //12.0,
                                            color: const Color(0xFFFD4F6A),
                                            letterSpacing: 1.000000030517578,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  )
                                : Align(
                                    alignment: Alignment(0.01, 0.0),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.68, //255.0,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04, //28.0,
                                      child: Text.rich(
                                        TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'SF Pro Display',
                                            fontSize:
                                                ResponsiveFlutter.of(context)
                                                    .fontSize(1.5), //12.0,
                                            color: const Color(0xFF222222),
                                            letterSpacing: 1.000000030517578,
                                          ),
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Получить код повторно можно будет через',
                                            ),
                                            TextSpan(
                                              text: ' ',
                                              style: TextStyle(
                                                color: const Color(0xFF463E42),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '4 минуты 30 секунд',
                                              style: TextStyle(
                                                color: const Color(0xFFFD4F6A),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                            //Spacer(flex: 27),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.033,
                            ),
                            //Button next
                            Container(
                              width: MediaQuery.of(context).size.width * 0.92,
                              height: MediaQuery.of(context).size.height * 0.06,
                              //margin: EdgeInsets.only(top: 20, bottom: 20),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        //builder: (context) => IPhone11ProX45(),
                                        //builder: (context) => IPhone11ProX46(),
                                        //builder: (context) => IPhone11ProX59(),
                                        builder: (context) => IPhone11ProX75(),
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(flex: 72),
          ],
        ),
      ),
    );
  }
}

createAlertDialogPrivacyPolicy(
    BuildContext context, Icon icon, String title, Color color, String desc) {
  // String privasyPolis =
  //    'Privacy Policy ftforest built the MyApp app as a Free app. This SERVICE is provided by ftforest at no cost and is intended for use as is. This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service. If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at MyApp unless otherwise defined in this Privacy Policy. Information Collection and Use For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to developer flutter. The information that I request will be retained on your device and is not collected by me in any way. The app does use third party services that may collect information used to identify you. Link to privacy policy of third party service providers used by the app Privacy Policy ftforest built the MyApp app as a Free app. This SERVICE is provided by ftforest at no cost and is intended for use as is. This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service. If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at MyApp unless otherwise defined in this Privacy Policy. Information Collection and Use For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to developer flutter. The information that I request will be retained on your device and is not collected by me in any way. The app does use third party services that may collect information used to identify you. Link to privacy policy of third party service providers used by the app';
  return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.917, //344
            height: MediaQuery.of(context).size.height * 0.25, //143
            //height: 188,
            padding: EdgeInsets.all(15),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  //height: MediaQuery.of(context).size.height * 0.044, //36
                  child: icon,
                ),
                Container(
                  // Group: Контент
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.339, //127.0,
                  height: MediaQuery.of(context).size.height * 0.068, //55.0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.339, //127.0,
                    height: MediaQuery.of(context).size.height * 0.04, //55.0,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:
                            ResponsiveFlutter.of(context).fontSize(3), //24.0,
                        color: color,
                        fontWeight: FontWeight.w700,
                        //height: 2.2916666666666665,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.781, //293.0,
                    height: MediaQuery.of(context).size.height * 0.05, //34.0,
                    child: Text(
                      desc,
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: ResponsiveFlutter.of(context)
                            .fontSize(1.75), //14.0,
                        color: const Color(0xFF222222),
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
