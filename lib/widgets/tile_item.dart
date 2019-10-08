import 'package:flutter/material.dart';

class TileItem extends StatelessWidget {
  final String title, subtitle;
  final IconData icon;

  TileItem({this.title, this.subtitle, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (icon != null)
            Icon(
              icon,
              size: 15,
            ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 3),
              Text(subtitle),
            ],
          )
        ],
      ),
    );
  }
}
