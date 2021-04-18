import 'package:flutter/material.dart';
import 'package:hackofiesta_220_volts/components/display_box.dart';
import 'package:hackofiesta_220_volts/components/main_button.dart';
import 'package:hackofiesta_220_volts/screens/result_screen.dart';

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

    double distanceNum = double.parse(distance);

    // get depth height
    final heightOfVessel = TextEditingController();

    // String heightOfVessel = '0';
    // double heightOfVesselNum = double.parse(heightOfVessel);

    //liquid depth
    double liquidDepth;

    // radius
    final radiusOfVessel = TextEditingController();

    // cylinder volume
    double cylinderVolume;

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
                    height: custHeight * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 2, color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: <Widget>[
                        DisplayBox(
                            label: 'L = ', displayText: '$distanceNum cm'),
                        SizedBox(height: 15),
                        Text('To find depth of liquid, please provide'),
                        Container(
                          // color: Colors.red,
                          margin: EdgeInsets.all(15),
                          width: 200.0,
                          child: TextField(
                            controller: heightOfVessel,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                labelText: 'Height of Vessel'),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                            'To find the volume of Cylindrical vessel, \n please provide '),
                        SizedBox(height: 15),
                        Container(
                          // color: Colors.red,
                          margin: EdgeInsets.all(15),
                          width: 200.0,
                          child: TextField(
                            controller: radiusOfVessel,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                labelText: 'Radius of Vessel'),
                          ),
                        ),
                        // Text(
                        //     'To find the volume of Rectangular vessel, \n please provide '),
                        // InputBox(labelText: 'Length'),
                        // InputBox(labelText: 'Width'),
                        // ShapeCard(
                        //   message: 'Volume',
                        //   imagePath: 'assets/logo.png',
                        //   height: custHeight * 0.1,
                        //   width: custWidth * 0.5,
                        //   circleAvatarColor: kBgLightBlue,
                        // ),
                        // Text(
                        //     'To find the volume of Cubical vessel, \n please provide '),
                        // InputBox(labelText: 'Edge Length'),
                        // ShapeCard(
                        //   message: 'Volume',
                        //   imagePath: 'assets/logo.png',
                        //   height: custHeight * 0.1,
                        //   width: custWidth * 0.5,
                        //   circleAvatarColor: kBgLightBlue,
                        // ),
                        // SizedBox(height: 20),
                        MainButton(
                          width: 150,
                          height: 55,
                          text: 'Calculate',
                          onTap: () {
                            double heightOfVesselNum =
                                double.parse(heightOfVessel.text);
                            double radiusOfVesselNum =
                                double.parse(radiusOfVessel.text);
                            liquidDepth = heightOfVesselNum - distanceNum;

                            cylinderVolume = 3.14 *
                                radiusOfVesselNum *
                                radiusOfVesselNum *
                                heightOfVesselNum;
                            print(radiusOfVesselNum);
                            print(cylinderVolume);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultScreen(
                                          liquidDepth: liquidDepth,
                                          cylinderVolume: cylinderVolume,
                                        )));
                          },
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
