import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
import 'configs/routes.dart';

//void main() => runApp(new HomePage());
void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.red, 
    accentColor: Colors.yellowAccent
  ),
  home: SplashPage(),
  routes: routes, // de 'configs/routes.dart'
  debugShowCheckedModeBanner: false,
));