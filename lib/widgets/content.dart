import 'package:flutter/material.dart';
import 'package:resume/widgets/heading.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: <Widget>[
          HeadingTile(title: "Profile Summary"),
          SizedBox(height: 15),
          Text(
            "Laborum quis dolor ad nulla id labore aliqua minim nostrud. Pariatur dolore minim veniam labore enim pariatur sunt eiusmod nostrud incididunt ullamco velit et. Dolore do occaecat fugiat labore quis veniam fugiat occaecat commodo. Incididunt exercitation nostrud anim cillum eu duis nulla nisi anim do. Mollit enim do incididunt anim Lorem consequat laborum aliquip. Voluptate non tempor non aute non aliqua est. Eu id ex qui reprehenderit pariatur qui elit minim fugiat aute commodo laborum eiusmod anim. Commodo cupidatat reprehenderit ad consectetur enim consequat do duis sint commodo do sint. Voluptate sit sit consectetur excepteur enim ut commodo.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              height: 2,
            ),
          ),
          SizedBox(height: 30),
          HeadingTile(title: "Technical Skills"),
          SizedBox(height: 15),
          Text(
            "Laborum quis dolor ad nulla id labore aliqua minim nostrud. Pariatur dolore minim veniam labore enim pariatur sunt eiusmod nostrud incididunt ullamco velit et. Dolore do occaecat fugiat labore quis veniam fugiat occaecat commodo. Incididunt exercitation nostrud anim cillum eu duis nulla nisi anim do. Mollit enim do incididunt anim Lorem consequat laborum aliquip. Voluptate non tempor non aute non aliqua est. Eu id ex qui reprehenderit pariatur qui elit minim fugiat aute commodo laborum eiusmod anim. Commodo cupidatat reprehenderit ad consectetur enim consequat do duis sint commodo do sint. Voluptate sit sit consectetur excepteur enim ut commodo.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              height: 2,
            ),
          ),
          SizedBox(height: 30),
          HeadingTile(title: "Work Experience"),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
