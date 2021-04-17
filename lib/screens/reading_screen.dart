import 'package:flutter/material.dart';

class ReadingScreen extends StatefulWidget {
  @override
  _ReadingScreenState createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('assets/main_background.png').image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
