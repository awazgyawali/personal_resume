import 'package:flutter/material.dart';
import 'package:resume/widgets/heading.dart';
import 'package:resume/widgets/star_rating.dart';
import 'package:resume/widgets/three_line_tile.dart';
import 'package:resume/widgets/tile_item.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      color: Color(0xffECEDEF),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  "https://avatars1.githubusercontent.com/u/10810343?s=460&v=4"),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              SizedBox(width: 50),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    HeadingTile(
                      title: "Contact Info",
                    ),
                    SizedBox(height: 15),
                    TileItem(
                      icon: (Icons.email),
                      title: ("Email"),
                      subtitle: ("awazgyawali@gmail.com"),
                    ),
                    TileItem(
                      icon: (Icons.phone),
                      title: ("Phone"),
                      subtitle: ("+977-9867103880"),
                    ),
                    TileItem(
                      icon: (Icons.location_on),
                      title: ("Address"),
                      subtitle: ("Mahadevtar - 11, Tokha\nKathmandu, Nepal"),
                    ),
                    SizedBox(height: 30),
                    HeadingTile(
                      title: "Education",
                    ),
                    SizedBox(height: 15),
                    ThreeLineTileItem(
                      title: "High School",
                      subtitle: "New Horizon Institute",
                      snippet: "2002 - 2014",
                    ),
                    ThreeLineTileItem(
                      title: "Bachelor's Degree",
                      subtitle:
                          "Bachelor's of Science in Computer Science and Information Technology",
                      snippet: "2015-2019",
                    ),
                    SizedBox(height: 30),
                    HeadingTile(
                      title: "Language",
                    ),
                    SizedBox(height: 15),
                    StarRatingBar(
                      value: 4,
                      title: "English",
                    ),
                    StarRatingBar(
                      value: 5,
                      title: "Nepali",
                    ),
                    StarRatingBar(
                      value: 4,
                      title: "Hindi",
                    ),
                    SizedBox(height: 30),
                    HeadingTile(
                      title: "Social Links",
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
