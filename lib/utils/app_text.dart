import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({Key? key,  this.color=Colors.black, required this.text,  this.size = 16}) : super(key: key);
  final Color color;
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
