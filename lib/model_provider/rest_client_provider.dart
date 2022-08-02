import 'package:fiverr/network/rest_client.dart';
import 'package:flutter/material.dart';

class RestClientProvider<T> extends ChangeNotifier {
  late T model;
  bool loading = false;
  String url;

  RestClientProvider(this.url);

  Future<T> getData(T Function(Map<String, dynamic>) constructor) async {
    loading = true;
    model = (await RequestHttp<T>(url).getHttp(constructor))!;
    loading = false;

    notifyListeners();
    return model;
  }

  /*Future<void> postData(T Function(Map<String, dynamic>) constructor) async {
    loading = true;
    model = (await RequestHttp<T>(url).postHttp(constructor));
    loading = false;
    notifyListeners();
  }*/
}
