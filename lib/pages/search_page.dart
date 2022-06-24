import 'package:fiverr/customWidget/custom_silver_serchBar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      "categoria 1",
      "categoria 2",
      "categoria 3",
      "categoria 4",
      "categoria 5"
    ];
    return SafeArea(
        child: Scaffold(
            body: appbar(
      tabs: tabs,
      children: _body(
          tabs: tabs,
          elements: Container(
            height: 100,
          )),
      context: context,
    )));
  }
}

List<Widget> _body({required Widget elements, required List<String> tabs}) {
  List<Widget> lista = [];

  for (var element in tabs) {
    lista.add(
      ListView.builder(itemCount: 1, itemBuilder: (_, int index) => elements),
    );
  }

  return lista;
}
