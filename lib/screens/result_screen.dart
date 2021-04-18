import 'package:flutter/material.dart';
import 'package:hackofiesta_220_volts/components/display_box.dart';
import 'package:hackofiesta_220_volts/components/shape_card.dart';
import 'package:hackofiesta_220_volts/shared/constants.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({this.liquidDepth, this.cylinderVolume});

  final double liquidDepth;
  final double cylinderVolume;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double custHeight = size.height;
    double custWidth = size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset('assets/plain_bg.png').image,
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
              width: custWidth * 0.9,
              height: custHeight * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 2, color: Colors.lightBlueAccent),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DisplayBox(label: 'D = ', displayText: '$liquidDepth cm'),
                  ShapeCard(
                    message: 'Volume = $cylinderVolume cc',
                    imagePath: 'assets/cylinder.png',
                    height: custHeight * 0.1,
                    width: custWidth * 0.5,
                    circleAvatarColor: kBgLightBlue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
