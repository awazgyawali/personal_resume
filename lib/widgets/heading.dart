import 'package:flutter/material.dart';

class HeadingTile extends StatelessWidget {
  final String title;

  const HeadingTile({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              color: Colors.grey,
              height: 3,
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
