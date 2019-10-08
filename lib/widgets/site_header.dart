import 'package:flutter/material.dart';

class SiteHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).accentColor,
      padding: EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aawaz Gyawali",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Mobile Engineer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
