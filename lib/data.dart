import 'package:http/http.dart' as http;
import 'dart:convert';

Future fetchPost() async {
  var url= 'http://localhost/genre/index.php/login';
  http.Response response = await http.get(url);
  var data = jsonDecode(response.body);
  return data;
}
