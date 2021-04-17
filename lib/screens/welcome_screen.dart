import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackofiesta_220_volts/components/main_button.dart';
import 'package:hackofiesta_220_volts/screens/reading_screen.dart';
import 'package:hackofiesta_220_volts/screens/records_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double custWidth = size.width;
    double custHeight = size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset('assets/main_background.png').image,
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: custHeight * 0.01,
                  left: custWidth * 0.1,
                  right: custWidth * 0.1,
                  child: Container(
                    // width: custWidth * 0.8,
                    // height: custHeight * 0.8,
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                Positioned(
                  top: custHeight * 0.45,
                  left: custWidth * 0.31,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'L-Scale',
                        style: GoogleFonts.cinzel(
                          textStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 130),
                      MainButton(
                        width: 150,
                        height: 55,
                        text: 'Take Readings',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReadingScreen()));
                        },
                      ),
                      SizedBox(height: 30),
                      MainButton(
                        width: 150,
                        height: 55,
                        text: 'Records',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RecordsScreen()));
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
    );
  }
}
