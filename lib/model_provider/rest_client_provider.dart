import 'package:fiverr/network/rest_client.dart';
import 'package:flutter/material.dart';

class RestClientProvider<T> extends ChangeNotifier {
  T? model;
  bool loading = false;
  T Function(Map<String, dynamic>) x;

  RestClientProvider(this.x);

  Future<void> getData() async {
    loading = true;
    model = (await RequestHttp<T>().getHttp(x));
    loading = false;

    notifyListeners();
  }

  Future<void> postData() async {
    loading = true;
    model = (await RequestHttp<T>().postHttp(x));
    loading = false;

    notifyListeners();
  }
}
