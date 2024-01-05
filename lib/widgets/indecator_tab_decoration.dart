import 'package:flutter/material.dart';

class CircleTAbIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTAbIndicator({required this.color,required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CirclePainter(color: color ,radius: radius);
  }
}
class CirclePainter extends BoxPainter{
  final Color color;
  double radius;

  CirclePainter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color =color;
    Offset CircleOffset =Offset(configuration.size!.width/2-radius/2, configuration.size!.height-radius);
    _paint.isAntiAlias=true;
    canvas.drawCircle(offset+CircleOffset, radius, _paint);
  }
  
}