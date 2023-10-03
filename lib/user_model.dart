import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List> getData() async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
  http.Response response_body = await http.get(uri);
  var body = json.decode(response_body.body);
  List list = [];
  for(int i = 0; i < body.length; i++)
    list.add(body[i]);
  return list;
}