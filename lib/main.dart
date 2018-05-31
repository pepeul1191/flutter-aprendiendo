import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/splash_page.dart';

//void main() => runApp(new HomePage());
void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.red, 
    accentColor: Colors.yellowAccent
  ),
  debugShowCheckedModeBanner: false,
  home: SplashPage(),
  routes: <String, WidgetBuilder> {
    '/home': (BuildContext context) => new HomePage(),
    //'/screen2' : (BuildContext context) => new Screen2()
  },
));