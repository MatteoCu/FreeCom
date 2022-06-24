import 'package:fiverr/pages/home_page.dart';
import 'package:fiverr/pages/message_page.dart';
import 'package:flutter/material.dart';
import 'package:fiverr/theme/my_theme.dart';

import 'pages/search_page.dart';

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
        title: 'FreeCom', theme: theme, home: const SearchPage());
  }
}
