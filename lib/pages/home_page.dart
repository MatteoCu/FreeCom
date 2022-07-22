import 'package:fiverr/customWidget/roundedContainer.dart';
import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:fiverr/customWidget/search_bar.dart';
import 'package:fiverr/models/home_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title, required}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Theme.of(context).iconTheme.color,
            ),
            Icon(
              Icons.diamond_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
          ],
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: Text(title),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: elementHome(HomePageResult.fromJson(json), context))),
        ));
  }
}

List<Widget> elementHome(HomePageResult res, BuildContext context) {
  List<Widget> elements = [
    const SizedBox(
      height: 30,
    ),
    searchBar(context),
    Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text("Categorie",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.apply(color: Colors.white))),
    SingleChildScrollView(
        //
        scrollDirection: Axis.horizontal,
        child: Row(
            children: elementsBuilder(HomePageResult.fromJson(json)))),
    Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Text("Top Rated",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.apply(color: Colors.white))),
  ];

  for (TopRated index in res.topRated) {
    elements.add(Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
            child: roundedPhoto(index.imgUrl, radius: 15, height: 250, whidht: 300))));
  }

  return elements;
}

Tile({required int index}) {
  return Container(
    padding: EdgeInsets.all(150),
    color: Colors.blueAccent,
  );
}

List<Widget> elementsBuilder(HomePageResult res) {//categorie
  //da aggiustre l interfaccia in modo da fare un solo element builder
  int i = 0;
  List<Widget> elements = <Widget>[];
  for (String index in res.categories) {
    i++;
    elements.add(roundedContainer(
        margin: const EdgeInsets.all(15),
        spaceBetween: 15,
        colorText: Colors.white,
        color: Colors.grey[900],
        widht: 150,
        height: 130,
        radiusBorder: 15,
        name: res.categories[0],
        photo: roundedPhoto(res.topRated[0].imgUrl, radius: 15, height: 80, whidht: 150)));
  }
  return elements;
}




var json = {
    "categories" : ["logo", "design", "xdcccdcd", "dcc"],
    "topRated" : [
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
    },
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
    },{
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
    },{
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
    },

    ]


  };