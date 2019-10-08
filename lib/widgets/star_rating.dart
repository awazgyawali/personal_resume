import 'package:flutter/material.dart';

class StarRatingBar extends StatelessWidget {
  final int value;

  final String title;

  StarRatingBar({this.value = 0, this.title});

  getCircle(bool filled, BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
        color: filled ? Theme.of(context).primaryColor : null,
      ),
      child: !filled
          ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
              ),
              height: 2,
              width: 2,
            )
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: Text(title)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 5; i++) getCircle(i < value, context)
              ],
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
