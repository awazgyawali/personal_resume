import 'package:flutter/material.dart';

class ParaSection extends StatelessWidget {
  final String title, snippet, paragraph;

  const ParaSection({Key key, this.title, this.snippet, this.paragraph})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                height: 8,
                width: 8,
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Text(
            snippet,
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 2),
          Text(
            paragraph,
            textAlign: TextAlign.justify,
            style: TextStyle(
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
