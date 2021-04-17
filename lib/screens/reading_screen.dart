import 'package:flutter/material.dart';
import 'package:hackofiesta_220_volts/components/shape_card.dart';
import 'package:hackofiesta_220_volts/shared/constants.dart';

class ReadingScreen extends StatefulWidget {
  @override
  _ReadingScreenState createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
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
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30),
                      Container(
                        width: custWidth * 0.8,
                        height: custHeight * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 2, color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/bottle_diagram.png'),
                            Text(
                              'L = Depth at which liquid is present \n D = Depth of the liquid itself \n H = Height of the vessel itself',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: custWidth * 0.9,
                        height: custHeight,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 2, color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15),
                            Text('Volume'),
                            ShapeCard(
                              message: 'Volume',
                              imagePath: 'assets/logo.png',
                              height: custHeight * 0.1,
                              width: custWidth * 0.5,
                              circleAvatarColor: kBgLightBlue,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
