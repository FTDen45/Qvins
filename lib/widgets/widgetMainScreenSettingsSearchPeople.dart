import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:qvins/MyModel.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class widgetMainScreenSettingsSearchPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyModel>(
      builder: (ctx, numer, child) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                    vertical: getProportionateScreenHeight(5)),
                width: getProportionateScreenWidth(343),
                height: getProportionateScreenHeight(197),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/img/bg_logo_top/q.svg',
                      width: MediaQuery.of(context).size.width * 0.16,
                      //height: MediaQuery.of(context).size.width * 0.059,
                      color: Color(0xffFD4F6A),
                      //fit: BoxFit.cover,
                    ),
                    Text(
                      'Купите вип, чтобы видеть взаимные лайки, вернуть тех, кого вы случайно дизлайкнули и многое другое',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:
                            ResponsiveFlutter.of(context).fontSize(1.7), //16.0,
                        color: const Color(0xFFBABABA),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //Button next
                    Container(
                      width: getProportionateScreenWidth(311),
                      //height: getProportionateScreenHeight(41),
                      margin: EdgeInsets.only(
                          top: getProportionateScreenHeight(10)),
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {
                          print('!!!Повысить подписку!!!');
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
                              maxWidth: getProportionateScreenWidth(311),
                              minHeight: getProportionateScreenHeight(41),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Повысить подписку',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(2), //16.0,
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
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                    vertical: getProportionateScreenHeight(10)),
                width: getProportionateScreenWidth(343),
                height: getProportionateScreenHeight(113),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Местонахождение',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(2), //16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on, color: Colors.black,
                          size:
                              ResponsiveFlutter.of(context).fontSize(2.5), //20
                        ),
                        Container(
                          width: getProportionateScreenWidth(8),
                        ),
                        Text(
                          'Определить по геолокации',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(1.75), //14.0,
                            color: const Color(0xFF222222),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          'assets/images/img/check_gal.svg',
                          width: MediaQuery.of(context).size.width * 0.059,
                          height: MediaQuery.of(context).size.width * 0.059,
                          //color: Color(0xff),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(28)),
                          child: InkWell(
                            onTap: () {
                              print('!!!Добавить город!!!');
                            },
                            child: Text(
                              'Добавить город',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: ResponsiveFlutter.of(context)
                                    .fontSize(1.5), //12.0,
                                color: const Color(0xFFFD4F6A),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                    vertical: getProportionateScreenHeight(10)),
                width: getProportionateScreenWidth(343),
                //height: getProportionateScreenHeight(91.7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RangSliderAge(
                        'Возрастной диапазон', '', 1.0, 100.0, 14, 47, 0),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                    vertical: getProportionateScreenHeight(10)),
                width: getProportionateScreenWidth(343),
                height: getProportionateScreenHeight(91.7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Показывать мне',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(2), //16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Consumer<MyModel>(builder: (context, value, child) {
                      if (numer.numer == 0) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _btnBoyGirlAll('Девушек', numer.girls2, 0),
                            _btnBoyGirlAll('Парней', numer.boys2, 1),
                            _btnBoyGirlAll('Всех', numer.any2, 2),
                          ],
                        );
                      }
                    }),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(7)),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                    vertical: getProportionateScreenHeight(10)),
                width: getProportionateScreenWidth(343),
                //height: getProportionateScreenHeight(91.7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RangSliderAge(
                        'Примерное расстояние',
                        ' км от меня',
                        0.1,
                        5.0,
                        // int.parse((1.0).toStringAsFixed(1)),
                        // int.parse((2.0).toStringAsFixed(1)),
                        0.3,
                        3.8,
                        1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _btnBoyGirlAll extends StatefulWidget {
  String textGender = '';
  bool WomenButton = false;
  num choose;
  _btnBoyGirlAll(this.textGender, this.WomenButton, this.choose);
  @override
  __btnBoyGirlAllState createState() => __btnBoyGirlAllState();
}

class __btnBoyGirlAllState extends State<_btnBoyGirlAll> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyModel>(context, listen: false);
    return Container(
      width: getProportionateScreenWidth(100),
      height: getProportionateScreenHeight(29),
      //margin: EdgeInsets.only(top: 20, bottom: 20),
      child: RaisedButton(
        onPressed: () {
          //final model = Provider.of<MyModel>(context);
          if (widget.choose == 0) {
            model.girls2 = true;
            model.boys2 = false;
            model.any2 = false;
          }
          if (widget.choose == 1) {
            model.girls2 = false;
            model.boys2 = true;
            model.any2 = false;
          }
          if (widget.choose == 2) {
            model.girls2 = false;
            model.boys2 = false;
            model.any2 = true;
          }
          print('${model.numer}-${widget.choose}');
          print(widget.WomenButton);
        },
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: widget.WomenButton
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Color(0xffFD4F6A),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Color(0xffF4F4F4),
                  border: Border.all(
                    color: Color(0xffBABABA),
                    width: 1,
                  ),
                ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: getProportionateScreenWidth(100),
              minHeight: getProportionateScreenHeight(29),
            ),
            alignment: Alignment.center,
            child: Text(
              widget.textGender,
              style: widget.WomenButton
                  ? TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(1.75), //14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )
                  : TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize:
                          ResponsiveFlutter.of(context).fontSize(1.75), //18.0,
                      color: const Color(0xFFBABABA),
                      fontWeight: FontWeight.w300,
                    ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class RangSliderAge extends StatefulWidget {
  String title;
  String textCount;
  num min;
  num max;
  double start;
  double end;
  num chooceTypeText;
  RangSliderAge(this.title, this.textCount, this.min, this.max, this.start,
      this.end, this.chooceTypeText);
  @override
  _RangSliderAgeState createState() => _RangSliderAgeState();
}

class _RangSliderAgeState extends State<RangSliderAge> {
  RangeValues _currentRangeValues;
  num start;
  num end;
  @override
  void initState() {
    start = widget.start;
    end = widget.end;
    _currentRangeValues = RangeValues(widget.start, widget.end);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Text(
              (widget.chooceTypeText == 0)
                  ? '${start} - ${end}'
                  : '${start} ' + widget.textCount,
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: ResponsiveFlutter.of(context).fontSize(2), //16.0,
                color: const Color(0xFFFD4F6A),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(),
          child: RangeSlider(
            activeColor: Color(0xffEA425C),
            inactiveColor: Color(0xffE6E6E6),
            values: _currentRangeValues,
            min: widget.min,
            max: widget.max,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
                if (widget.chooceTypeText == 0) {
                  start = values.start.round();
                  end = values.end.round();
                } else {
                  // start = values.start.round();
                  // end = values.end.round();
                  start = double.parse((values.start).toStringAsFixed(1));
                  end = double.parse((values.end).toStringAsFixed(1));
                }
              });
            },
          ),
        ),
      ],
    );
  }
}
