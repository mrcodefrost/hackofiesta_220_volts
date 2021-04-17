import 'package:flutter/material.dart';

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
                Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    Container(
                      width: custWidth * 0.8,
                      height: custHeight * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(width: 2, color: Colors.lightBlueAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/bottle_diagram.png'),
                          Text('L = Depth at which liquid is present'),
                          Text('D = Depth of the liquid itself'),
                          Text('H = Height of the '),
                          Text('L = '),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
