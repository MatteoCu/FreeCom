import 'package:fiverr/customWidget/custom_silver_serchBar.dart';
import 'package:fiverr/customWidget/star_widget.dart';
import 'package:fiverr/pages/product_page.dart';

import 'package:flutter/material.dart';

import '../customWidget/roundedPhoto.dart';
import '../models/home_page.dart';

class HomePage extends StatelessWidget {
  HomePageResult model;
  String user;

  HomePage(this.model, this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: appbar(
                context: context,
                tabs: model.categories,
                children: _body(
                  tabs: model.categories,
                  elements: result(model),
                ))));
  }
}

List<Widget> _body(
    {required List<List<Widget>> elements, required List<String> tabs}) {
  List<Widget> lista = [];


  for (int index = 0; index < tabs.length; index++) {
    lista.add(
      GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: elements[index]),
    );
  }

  return lista;
}

List<List<Widget>> result(HomePageResult model) {
  List<List<Widget>> body = [];
  List<Widget> list = [];

  for (String index in model.categories) {
    for (Elements m in model.filter(index)) {
      list.add(Element(m));
    }
    body += [list];
    list = [];
  }

  return body;
}

class Element extends StatelessWidget {
  final Elements model;

  const Element(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductPage(elem: model,)),
          );
        },
        child: Stack(
          children: <Widget>[
            Positioned.fill(child: roundedPhoto(model.photo)),
            Positioned.fill(
                child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 137, 175, 76),
                    Colors.transparent,
                    Colors.transparent,
                    Color.fromARGB(255, 137, 175, 76),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment(0, 0.7),
                  stops: [0, 0, 0.4, 1],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //display event name, start/end dates times and duration in a column
                  Padding(
                      padding: const EdgeInsets.only(bottom: 15, left: 15),
                      child: Row(children: [
                        Text(model.variety,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        Expanded(
                          child: Container(),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
                      ]))
                ],
              ),
            )),
            const Positioned(
                top: 5,
                left: 10,
                child: StarDisplay(
                  value: 3,
                )),
          ],
        ));
  }
}
