import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final double? width;
  const ResponsiveButton({Key? key,  this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,),
      width: width,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.double_arrow,color: Colors.white,),
          Icon(Icons.double_arrow,color: Colors.white,),
          Icon(Icons.double_arrow,color: Colors.white,),

        ],
      ),
    );
  }
}
