import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:qvins/MyModel.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class widgetMainScreenSercheSearchEvents extends StatelessWidget {
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
                width: getProportionateScreenWidth(344),
                margin: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(24)),
                child: TextFormField(
                  //initialValue: 'abc',
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search, color: Color(0xffBABABA)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffBABABA),
                    )),
                    hintText: 'Найти нужное мероприятие',
                    hintStyle: TextStyle(color: Color(0xffBABABA)),
                    // prefix: Text('Prefix'),
                    // suffix: Text('Suffix'),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffBABABA),
                    )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffBABABA),
                    )),
                  ),
                ),
              ),
              Container(
                width: getProportionateScreenWidth(344),
                child: EventsItem(
                  'assets/images/img/Kino_03.jpg',
                  'Фильм “Жених”',
                  'Кино',
                  '12 июня 2021 года Макс Корж приедет в город Екатеринбург, чтобы исполнить вместе с тысячами фанатами свои хиты! Большой сольный концерт состоится на современной площадке Газпром Арена. Макс Корж всего за несколько лет стал популярнейшим исполнителем не только в Беларуси, но и в России. Музыкант стал в ном..',
                ),
              ),
              Container(
                width: getProportionateScreenWidth(344),
                child: EventsItem(
                  'assets/images/img/Kino_02.jpg',
                  'Концерт “Макса Коржа”',
                  'Концерт',
                  '12 июня 2021 года Макс Корж приедет в город Екатеринбург, чтобы исполнить вместе с тысячами фанатами свои хиты! Большой сольный концерт состоится на современной площадке Газпром Арена. Макс Корж всего за несколько лет стал популярнейшим исполнителем не только в Беларуси, но и в России. Музыкант стал в ном..',
                ),
              ),
              Container(
                width: getProportionateScreenWidth(344),
                child: EventsItem(
                  'assets/images/img/Kino_01.jpg',
                  'Фильм “Жених”',
                  'Кино',
                  '12 июня 2021 года Макс Корж приедет в город Екатеринбург, чтобы исполнить вместе с тысячами фанатами свои хиты! Большой сольный концерт состоится на современной площадке Газпром Арена. Макс Корж всего за несколько лет стал популярнейшим исполнителем не только в Беларуси, но и в России. Музыкант стал в ном..',
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
                  ? '${start} - ${end} руб'
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
                  start = int.parse(values.start.round().toStringAsFixed(0));
                  end = int.parse(values.end.round().toStringAsFixed(0));
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

class EventsItem extends StatelessWidget {
  EventsItem(
    this.img,
    this.name,
    this.ganar,
    this.desc,
  );
  String img;
  String name;
  String ganar;
  String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(16),
        bottom: getProportionateScreenHeight(8),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Image.asset(img,
                width: getProportionateScreenWidth(344), fit: BoxFit.fill),
          ),
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(16)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:
                            ResponsiveFlutter.of(context).fontSize(2), //16.0,
                        color: Colors.grey[850],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(11),
                        right: getProportionateScreenWidth(11),
                        top: getProportionateScreenHeight(2),
                        bottom: getProportionateScreenHeight(2),
                      ),
                      height: getProportionateScreenHeight(17.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.0),
                        color: const Color(0xFF674FFD),
                      ),
                      child: Text(
                        ganar,
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.25), //10.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(16)),
                  child: SizedBox(
                      width: getProportionateScreenWidth(312),
                      child: Text(
                        desc,
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.75), //14.0,
                          color: const Color(0xFFA9A9A9),
                        ),
                      )),
                ),
                //Button next
                Container(
                  width: getProportionateScreenWidth(311),
                  height: getProportionateScreenHeight(41),
                  margin:
                      EdgeInsets.only(top: getProportionateScreenHeight(10)),
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      print('!!!Подробнее!!!');
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
                          'Подробнее',
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
                //Button next
                Container(
                  width: getProportionateScreenWidth(311),
                  height: getProportionateScreenHeight(41),
                  margin:
                      EdgeInsets.only(top: getProportionateScreenHeight(10)),
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      print('!!!Вступить в общий чат!!!');
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xffFD4F6A)),
                        borderRadius: BorderRadius.circular(5.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: Colors.white,
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: getProportionateScreenWidth(311),
                          minHeight: getProportionateScreenHeight(41),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Вступить в общий чат',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(2), //16.0,
                            color: Color(0xffFD4F6A),
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
        ],
      ),
    );
  }
}
