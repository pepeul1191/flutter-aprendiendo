import 'dart:async';
import 'package:http/http.dart' as http;
import '../configs/constants.dart';

Future<String> demoGet() async {
  return await http.get(
    new Uri.http(CONSTANTS['BASE_URL'], '/departamento/listar'),
    headers: {
      'key': 'demo',
    },
  ).then((response) {
    switch (response.statusCode) {
      case 200:
        return response.body;
        break;
      case 500: 
        throw('error 500!');
        break;
      default:
        throw('errosh');
        break;
    }
  }).catchError((e){
    print(e);
    return "ERROR";
  });
}
