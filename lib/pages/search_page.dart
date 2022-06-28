

import 'package:fiverr/customWidget/custom_silver_serchBar.dart';
import 'package:fiverr/customWidget/elementList.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      "categoria 1",
      "categoria 2",
    ];
    return SafeArea(
        child: Scaffold(
            body: appbar(
                context: context,
                tabs: tabs,
                children: _body(
                  tabs: tabs,
                  elements: a,
                ))));
  }
}

List<Widget> _body(
    {required List<Widget> elements, required List<String> tabs}) {
  List<Widget> lista = [];

  print(elements.length);
  for (int index = 0; index < tabs.length; index++) {
    lista.add(
      SingleChildScrollView(child: elements[index]),
    );
  }

  return lista;
}

List<Widget> a = [
  Container(),
  Column(children: [
    ElementList(
        photo: 'https://picsum.photos/250?image=9',
        title: 'dffdfsdfd',
        text: 'shdj',
        time: ''),
    ElementList(
        photo: 'https://picsum.photos/250?image=9',
        title: 'dffdfsdfd',
        text: 'shdj',
        time: ''),
    ElementList(
        photo: 'https://picsum.photos/250?image=9',
        title: 'dffdfsdfd',
        text: 'shdj',
        time: ''),
    ElementList(
        photo: 'https://picsum.photos/250?image=9',
        title: 'dffdfsdfd',
        text: 'shdj',
        time: ''),
    ElementList(
        photo: 'https://picsum.photos/250?image=9',
        title: 'dffdfsdfd',
        text: 'shdj',
        time: ''),
    ElementList(
        photo: 'https://picsum.photos/250?image=9',
        title: 'dffdfsdfd',
        text: 'shdj',
        time: '')
  ])
];
