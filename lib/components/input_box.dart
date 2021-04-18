import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  InputBox({this.onChanged, @required this.labelText});

  final String labelText;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.all(15),
      width: 200.0,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            labelText: labelText),
      ),
    );
  }
}
