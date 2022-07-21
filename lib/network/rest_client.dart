import 'dart:convert';
import 'package:fiverr/models/message.dart';
import 'package:fiverr/pages/message_page.dart';
import 'package:fiverr/pages/product_page.dart';
import 'package:http/http.dart' as http;

class RequestHttp<T> {
  Future<T?> getHttp(T Function(Map<String, dynamic> x) constructor,
      {String? request}) async {
    //RequestHttp<messageModel>(json).gethttp
    final response = await http.get(Uri.parse('http://${request}'));

    if (response.statusCode == 200) {
      return constructor(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  Future<T?> postHttp(T Function(Map<String, dynamic> x) constructor,
      {String? request, Map<String, dynamic>? json}) async {
    //RequestHttp<messageModel>(json).gethttp
    final response =
        await http.post(Uri.parse('http://${request}'), body: body);

    if (response.statusCode == 200) {
      return constructor(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}
