import 'package:flutter/material.dart';
import 'landscapeLayout.dart';
import 'portraitLayout.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final appTitle = 'Responsive UI';
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyApp> {
  var isLandscape = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(builder: (context, orientation) {
        if (MediaQuery.of(context).size.width >
            MediaQuery.of(context).size.height) {
          isLandscape = true;
        } else {
          isLandscape = false;
        }
        return isLandscape ? LandscapeLayout() : PortraitLayout();
      }),
    );
  }
}
