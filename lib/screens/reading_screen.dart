import 'package:flutter/material.dart';
import 'package:hackofiesta_220_volts/components/shape_card.dart';
import 'package:hackofiesta_220_volts/shared/constants.dart';

class ReadingScreen extends StatefulWidget {
  ReadingScreen({this.allData});

  final allData;

  @override
  _ReadingScreenState createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  String distance;

  void updateDistance(dynamic arduinoData) {
    distance = arduinoData['feeds'][55]['field1'];
  }

  @override
  void initState() {
    updateDistance(widget.allData);
    super.initState();
  }

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
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: custWidth * 0.8,
                    height: custHeight * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 2, color: Colors.lightBlueAccent),
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
                      border:
                          Border.all(width: 2, color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: <Widget>[
                        DisplayBox(label: 'L = ', displayText: distance),
                        SizedBox(height: 15),
                        Text('To find depth of liquid, please provide'),
                        InputBox(labelText: 'Height of Vessel'),
                        DisplayBox(
                            label: 'D = ',
                            displayText: 'todo'), //${100-distance}
                        Text(
                            'To find the volume of Cylindrical vessel, \n please provide '),
                        InputBox(labelText: 'Radius of Vessel'),
                        ShapeCard(
                          message: 'Volume',
                          imagePath: 'assets/logo.png',
                          height: custHeight * 0.1,
                          width: custWidth * 0.5,
                          circleAvatarColor: kBgLightBlue,
                        ),
                        Text(
                            'To find the volume of Rectangular vessel, \n please provide '),
                        InputBox(labelText: 'Length'),
                        InputBox(labelText: 'Width'),
                        ShapeCard(
                          message: 'Volume',
                          imagePath: 'assets/logo.png',
                          height: custHeight * 0.1,
                          width: custWidth * 0.5,
                          circleAvatarColor: kBgLightBlue,
                        ),
                        Text(
                            'To find the volume of Cubical vessel, \n please provide '),
                        InputBox(labelText: 'Edge Length'),
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
          ),
        ),
      ),
    );
  }
}

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
