import 'package:fiverr/network/rest_client.dart';
import 'package:flutter/material.dart';

class RestClientProvider<T> extends ChangeNotifier {
  T? model;
  bool loading = false;
  String url;
  T Function(Map<String, dynamic>) constructor;

  RestClientProvider(this.constructor, this.url);

  Future<void> getData() async {
    loading = true;
    Future.delayed(const Duration(seconds: 2));
    model = (await RequestHttp<T>(url).getHttp(constructor));
    loading = false;

    notifyListeners();
  }

  Future<void> postData() async {
    loading = true;
    model = (await RequestHttp<T>(url).postHttp(constructor));
    loading = false;

    notifyListeners();
  }
}
