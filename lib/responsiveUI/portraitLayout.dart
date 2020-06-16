import 'package:flutter/material.dart';
import 'listwidget.dart';

class PortraitLayout extends StatefulWidget {
  @override
  _PortraitLayoutState createState() => _PortraitLayoutState();
}

class _PortraitLayoutState extends State<PortraitLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: Expanded(
            child: ListWidget(10),
          ),
        ),
        body: Row(children: <Widget>[
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
