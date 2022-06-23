import 'package:fiverr/pages/message_page.dart';
import 'package:flutter/material.dart';
import 'package:fiverr/theme/my_theme.dart';

void main() {
  runApp(const App());
}

Map<String, dynamic> messa = {
  "message": [
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"},
    {"name": "matteo", "text": "sdadsd", "time": "ffdgfgf"}
  ]
};

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = MyTheme(textTheme).getTheme();

    return MaterialApp(
      title: 'freeCom',
      theme: theme,
      home: const MessagePage(),
    );
  }
}
