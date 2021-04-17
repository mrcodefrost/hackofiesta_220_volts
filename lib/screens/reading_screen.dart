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
                        padding: EdgeInsets.all(5),
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
                      // Second Box
                      Container(
                        width: custWidth * 0.9,
                        height: custHeight * 1.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 2, color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15),
                            Container(
                              height: 65,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: kBgLightBlue,
                                  border: Border.all(
                                      width: 1, color: Colors.lightBlueAccent),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text('L = '),
                                  Text('55 Meters \n \t  OR \n 100 Inches'),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Text('To find depth of liquid, please provide'),
                            SizedBox(height: 15),
                            Container(
                              // color: Colors.red,
                              width: 200.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    labelText: 'Height of Vessel'),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 65,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: kBgLightBlue,
                                  border: Border.all(
                                      width: 1, color: Colors.lightBlueAccent),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text('D = '),
                                  Text('15 Meters \n \t  OR \n 50 Inches'),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                                'To find the volume of Cylindrical vessel, \n please provide '),
                            SizedBox(height: 15),
                            Container(
                              // color: Colors.red,
                              width: 200.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    labelText: 'Radius of Vessel'),
                              ),
                            ),
                            SizedBox(height: 15),
                            ShapeCard(
                              message: 'Volume',
                              imagePath: 'assets/logo.png',
                              height: custHeight * 0.1,
                              width: custWidth * 0.5,
                              circleAvatarColor: kBgLightBlue,
                            ),
                            SizedBox(height: 15),
                            Text(
                                'To find the volume of Rectangular vessel, \n please provide '),
                            SizedBox(height: 15),
                            Container(
                              // color: Colors.red,
                              width: 200.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    labelText: 'Length'),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              // color: Colors.red,
                              width: 200.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    labelText: 'Width'),
                              ),
                            ),
                            SizedBox(height: 15),
                            ShapeCard(
                              message: 'Volume',
                              imagePath: 'assets/logo.png',
                              height: custHeight * 0.1,
                              width: custWidth * 0.5,
                              circleAvatarColor: kBgLightBlue,
                            ),
                            SizedBox(height: 15),
                            Text(
                                'To find the volume of Rectangular vessel, \n please provide '),
                            SizedBox(height: 15),
                            Container(
                              // color: Colors.red,
                              width: 200.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    labelText: 'Edge Length'),
                              ),
                            ),
                            SizedBox(height: 15),
                            ShapeCard(
                              message: 'Volume',
                              imagePath: 'assets/logo.png',
                              height: custHeight * 0.1,
                              width: custWidth * 0.5,
                              circleAvatarColor: kBgLightBlue,
                            ),
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
