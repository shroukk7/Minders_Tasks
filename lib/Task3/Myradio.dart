import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRadio extends StatelessWidget {
  String text;
  //String val;
  String radioValue;
  Function(String?) onChanged;
  MyRadio({super.key,required this.text,required this.radioValue, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(text),
      value: text, 
      groupValue: radioValue, 
      onChanged: onChanged
      );
  }
}