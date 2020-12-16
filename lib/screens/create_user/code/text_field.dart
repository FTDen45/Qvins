library pin_entry_text_field;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PinEntryTextField extends StatefulWidget {
  final String lastPin;
  final int fields;
  final ValueChanged<String> onSubmit;
  final double fieldWidth;
  final double fieldHeight;
  final TextStyle styleText;
  final num margin;
  final num padding;
  final num fontSize;
  final bool isTextObscure;
  final bool showFieldAsBox;
  final cursorColor; // Leaving the data type dynamic for adding Color or Material Color
  final boxColor;
  final textColor;

  PinEntryTextField({
    this.lastPin,
    this.fields: 6,
    this.onSubmit,
    this.fieldWidth: 40.0,
    this.fieldHeight: 40.0,
    this.styleText,
    this.margin,
    this.padding,
    this.fontSize: 20.0,
    this.isTextObscure: false,
    this.showFieldAsBox: false,
    this.cursorColor: Colors
        .blue, // Adding a Material Color so that if the user want black, it get accepted too
    this.boxColor: Colors.blue,
    this.textColor: Colors.blue,
  }) : assert(fields > 0);

  @override
  State createState() {
    return PinEntryTextFieldState();
  }
}

class PinEntryTextFieldState extends State<PinEntryTextField> {
  List<String> _pin_nume;
  List<String> _pin;
  List<FocusNode> _focusNodes;
  List<TextEditingController> _textControllers;

  Widget textFields = Container();

  @override
  void initState() {
    super.initState();
    _pin_nume = List<String>(0);
    _pin = List<String>(widget.fields);
    //print(_pin);
    _focusNodes = List<FocusNode>(widget.fields);
    _textControllers = List<TextEditingController>(widget.fields);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.lastPin != null) {
          for (var i = 0; i < widget.lastPin.length; i++) {
            _pin[i] = widget.lastPin[i];
            //print(widget.lastPin[i]);
          }
        }
        textFields = generateTextFields(context);
      });
    });
  }

  @override
  void dispose() {
    _textControllers.forEach((TextEditingController t) => t.dispose());
    super.dispose();
  }

  Widget generateTextFields(BuildContext context) {
    List<Widget> textFields = List.generate(widget.fields, (int i) {
      return buildTextField(i, context, i == 0);
    });

    if (_pin.first != null) {
      FocusScope.of(context).requestFocus(_focusNodes[0]);
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: textFields);
  }

  void clearTextFields() {
    _textControllers.forEach(
        (TextEditingController tEditController) => tEditController.clear());
    _pin.clear();
  }

  Widget buildTextField(int i, BuildContext context, [bool autofocus = false]) {
    if (_focusNodes[i] == null) {
      _focusNodes[i] = FocusNode();
    }
    if (_textControllers[i] == null) {
      _textControllers[i] = TextEditingController();
      if (widget.lastPin != null) {
        _textControllers[i].text = widget.lastPin[i];
      }
    }

    _focusNodes[i].addListener(() {
      if (_focusNodes[i].hasFocus) {}
    });

    final String lastDigit = _textControllers[i].text;

    return Container(
      width: widget.fieldWidth,
      height: widget.fieldHeight,
      margin: EdgeInsets.only(right: widget.margin),
      child: TextField(
        controller: _textControllers[i],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        cursorColor: widget.cursorColor,
        maxLength: 1,
        autofocus: autofocus,
        style: widget.styleText,
        focusNode: _focusNodes[i],
        obscureText: widget.isTextObscure,
        decoration: InputDecoration(
            counterText: "",
            enabledBorder: widget.showFieldAsBox ? _chooseColorBorder(i) : null,
            focusedBorder: widget.showFieldAsBox
                ? OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Color(0xffFD4F6A),
                    ),
                  )
                : null),
        onChanged: (String str) {
          setState(() {
            _pin[i] = str;
            //_pin_nume = _pin.length;
          });

          if (i + 1 != widget.fields) {
            _focusNodes[i].unfocus();
            if (lastDigit != null && _pin[i] == '') {
              FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
            } else {
              FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
            }
          } else {
            _focusNodes[i].unfocus();
            if (lastDigit != null && _pin[i] == '') {
              FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
            }
          }
          if (_pin.every((String digit) => digit != null && digit != '')) {
            widget.onSubmit(_pin.join());
          }
        },
        onSubmitted: (String str) {
          if (_pin.every((String digit) => digit != null && digit != '')) {
            widget.onSubmit(_pin.join());
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textFields;
  }
}

_chooseColorBorder(i) {
  //print('zzzzzzzzzzz ${i}');
  switch (4) {
    case 0:
      return OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: Color(0xffFD4F6A)));
      break;
    case 1:
      return OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: Color(0xffFD4F6A)));
      break;
    case 2:
      return OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: Color(0xffFD4F6A)));
      break;
    case 3:
      return OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: Color(0xffFD4F6A)));
      break;
    default:
      return OutlineInputBorder(
          borderSide: BorderSide(width: 1.0, color: Color(0xffBABABA)));
  }
}
