import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;

  MainButton(
      {@required this.width, @required this.height, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.lightBlueAccent,
                blurRadius: 35,
                spreadRadius: 0,
                offset: Offset(2, 2)),
          ]),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.cinzel(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          )),
        )),
      ),
    );
  }
}
