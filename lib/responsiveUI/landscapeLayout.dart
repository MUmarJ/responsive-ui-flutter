import 'package:flutter/material.dart';
import 'listwidget.dart';

class LandscapeLayout extends StatefulWidget {
  @override
  _LandscapeLayoutState createState() => _LandscapeLayoutState();
}

class _LandscapeLayoutState extends State<LandscapeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Row(children: <Widget>[
          Expanded(
            child: ListWidget(10),
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "MUmarJ",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
          ),
        ]));
  }
}
