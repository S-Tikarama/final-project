// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HttpHelper {
//   static const String _baseUrl = ''; //Api base Url

// //helper method to make a GET request
// static Future<Map<String,dynamic>> get (String endpoint) async{
//   final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
//   return _handleResponse(response);
// }

// //helper method to make a POST request

// static Future<Map<String,dynamic>> post (String endpoint) async{
//   final response = await http.post(Uri.parse('$_baseUrl/$endpoint'),
//   headers:{'Content-Type':'application/json'},
//   body: json.encode(data),
  
//   );
//   return _handleResponse(response);
// }
// }
