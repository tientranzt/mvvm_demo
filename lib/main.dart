import 'package:flutter/material.dart';
import 'package:mvvm/src/app/pages/change_color/color_ui.dart';

import 'package:mvvm/src/app/pages/change_color/color_viewmodel.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorUI(),
    );
  }
}
