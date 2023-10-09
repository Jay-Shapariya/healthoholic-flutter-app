import 'package:flutter/material.dart';
import 'dart:math';

class CustomArcPainter extends CustomPainter {
  final Color color;
  final double startAngle;
  final double sweepAngle;

  CustomArcPainter({
    required this.color,
    required this.startAngle,
    required this.sweepAngle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final startRadians = (startAngle - 90) * pi / 180;
    final sweepRadians = sweepAngle * pi / 180;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startRadians,
      sweepRadians,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ArcWidget extends StatelessWidget {
  final double startAngle;
  final double sweepAngle;
  final Color color;
  final double size;

  const ArcWidget({
    super.key,
    required this.startAngle,
    required this.sweepAngle,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(size),
      painter: CustomArcPainter(
        color: color,
        startAngle: startAngle,
        sweepAngle: sweepAngle,
      ),
    );
  }
}
