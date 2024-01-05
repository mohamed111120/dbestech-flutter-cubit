import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  const AppLargeText({Key? key,  this.color=Colors.black, required this.text,  this.size = 30}) : super(key: key);
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
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
