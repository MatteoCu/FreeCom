import 'package:fiverr/models/result.dart';
import 'package:fiverr/pages/home_page.dart';
import 'package:fiverr/pages/productPage.dart';

import 'package:flutter/material.dart';
import 'package:fiverr/theme/my_theme.dart';

import 'pages/result_page.dart';
import 'pages/search_page.dart';

Map<String, dynamic> json = {
  "time": "fkmf",
  "elements": [
    {
      "name": "matteo",
      "imgUrl":
          "https://th.bing.com/th/id/OIP.4XB8NF1awQyApnQDDmBmQwHaEo?pid=ImgDet&rs=1",
      "description": "descriozone interessante",
      "value": 5,
      "price": ["200", "300", "500"],
      "services": [
        {"price0": "open source"},
        {"price0": " 1 pages"},
        {"price1": "logo"},
        {"price2": "closed source"}
      ],
      "comments": [
        {"name": "matteo", "text": "dfdfsdf"}
      ]
    }
  ]
};

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = MyTheme(textTheme).getTheme();

    return MaterialApp(
        title: 'FreeCom',
        theme: theme,
        home: ProductPage(elem: ReserchResult.fromJson(json).elements[0]));
  }
}
