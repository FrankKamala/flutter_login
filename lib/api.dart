import 'package:http/http.dart' as http;
import 'dart:convert';

Future loginUser(String email, String password) async{
  String url = "http://192.168.100.105/SOOP/index.php/api/login";
  Map<String, String > body = {"username": email, "password":password};

  final response = await http.post(url,
  headers: {"Accept":"Application/json"},
  body: jsonEncode(body)
  );

  var convertDataToJson = jsonDecode(response.body);
  return convertDataToJson;
}