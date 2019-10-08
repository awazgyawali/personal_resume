import 'package:flutter/material.dart';

class ThreeLineTileItem extends StatelessWidget {
  final String title, subtitle, snippet;

  ThreeLineTileItem({this.title, this.subtitle, this.snippet});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 3),
          Text(subtitle),
          SizedBox(height: 3),
          Text(snippet),
        ],
      ),
    );
  }
}
