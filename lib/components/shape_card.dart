import 'package:flutter/material.dart';

class ShapeCard extends StatelessWidget {
  ShapeCard({
    @required this.message,
    @required this.imagePath,
    @required this.height,
    @required this.width,
    @required this.circleAvatarColor,
  });

  final String message;
  final String imagePath;
  final double height;
  final double width;
  final Color circleAvatarColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: circleAvatarColor,
            radius: 50.0,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(width: 25.0),
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Center(
              child: Text(
                message,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
