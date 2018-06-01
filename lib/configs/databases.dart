import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

Future<Object> get(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.get(key);
}

Future<Object> set(String key, Object value, String tipo) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if(tipo == 'Bool'){
    prefs.setBool(key, value);
  }else if(tipo == 'Double'){
    prefs.setDouble(key, value);
  }else if(tipo == 'Int'){
    prefs.setInt(key, value);
  }
  else if(tipo == 'String'){
    prefs.setString(key, value);
  }
  else if(tipo == 'StringList'){
    prefs.setStringList(key, value);
  }
}

Future<Object> remove(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove(key);
}