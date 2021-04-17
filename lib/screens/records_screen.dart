import 'package:flutter/material.dart';

class RecordsScreen extends StatefulWidget {
  @override
  _RecordsScreenState createState() => _RecordsScreenState();
}

class _RecordsScreenState extends State<RecordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset('assets/main_background.png').image,
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
