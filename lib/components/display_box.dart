import 'package:flutter/material.dart';
import 'package:hackofiesta_220_volts/shared/constants.dart';

class DisplayBox extends StatelessWidget {
  final String displayText;
  final String label;

  DisplayBox({@required this.displayText, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 65,
      width: 200,
      decoration: BoxDecoration(
          color: kBgLightBlue,
          border: Border.all(width: 1, color: Colors.lightBlueAccent),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(label),
          Text(displayText),
        ],
      ),
    );
  }
}
