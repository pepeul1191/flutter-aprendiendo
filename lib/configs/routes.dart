import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';

final routes = <String, WidgetBuilder>{
  '/home': (BuildContext context) => new HomePage(),
  '/login': (BuildContext context) => new LoginPage(),
};