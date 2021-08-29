import 'package:flutter/material.dart';
import '../constants.dart';

class TextFieldPro extends StatefulWidget {
  final String hintTextField;

  TextFieldPro(this.hintTextField, );

  @override
  _TextFieldProState createState() => _TextFieldProState();
}

class _TextFieldProState extends State<TextFieldPro> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyle(color: kPryColor),
        decoration: InputDecoration(
          hintText: widget.hintTextField,
          hintStyle: TextStyle(color: kPryColor),
          labelStyle: TextStyle(color: kPryColor),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        onChanged: (String value) {
          print(value);
        });
  }
}
