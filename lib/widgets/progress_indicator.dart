import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double value;
  final String label;

  const CustomProgressIndicator({
    Key key,
    @required this.value,
    @required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 5),
          CustomPaint(
            size: Size(double.infinity, 5),
            painter: ProgressPainter(value, Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  final double value;
  final Color color;

  ProgressPainter(this.value, this.color);
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height), Radius.circular(10)),
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width * value, size.height),
          Radius.circular(10)),
      Paint()..color = color,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
