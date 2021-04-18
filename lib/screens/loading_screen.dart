import 'package:flutter/material.dart';
import 'package:hackofiesta_220_volts/models/sensor_data.dart';
import 'package:hackofiesta_220_volts/screens/reading_screen.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    getDistanceData();
  }

  void getDistanceData() async {
    SensorData sensorData = SensorData();
    var completeData = await sensorData.getSensorData();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ReadingScreen(
                  allData: completeData,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset('assets/loading.png').image,
          fit: BoxFit.cover,
        ),
      ),
    )));
  }
}
