import 'package:flutter/material.dart';
import '../configs/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text('BASE_URL : ' + CONSTANTS['BASE_URL']),
        ),
      ),
    );
  }
}