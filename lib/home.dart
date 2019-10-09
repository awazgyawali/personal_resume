import 'package:flutter/material.dart';
import 'package:resume/sidebar.dart';
import 'package:resume/widgets/content.dart';
import 'package:resume/widgets/site_header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Sidebar(),
            ),
            Expanded(
              flex: 3,
              child: Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: Column(
                  children: <Widget>[
                    SiteHeader(),
                    ContentPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
