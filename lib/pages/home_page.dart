import 'package:fiverr/customWidget/roundedContainer.dart';
import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:fiverr/customWidget/search_bar.dart';
import 'package:flutter/material.dart';

var image = [
  'https://picsum.photos/250?image=9',
  'https://picsum.photos/250?image=9',
  'https://picsum.photos/250?image=9',
  'https://picsum.photos/250?image=9'
];
var text = [
  'testo a caso',
  'resto random',
  'jdshajdhsajdh',
  'jdshajdhsajdh',
  'jdshajdhsajdh',
  'jdshajdhsajdh',
  'jdshajdhsajdh'
];

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
                  children: elementHome(image, context))),
        ));
  }
}

List<Widget> elementHome(var imageTopRated, BuildContext context) {
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
            children: elementsBuilder(DataClass(image: image, text: text)))),
    Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Text("Top Rated",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.apply(color: Colors.white))),
  ];

  for (var index in imageTopRated) {
    elements.add(Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
            child: roundedPhoto(index, radius: 15, height: 250, whidht: 300))));
  }

  return elements;
}

Tile({required int index}) {
  return Container(
    padding: EdgeInsets.all(150),
    color: Colors.blueAccent,
  );
}

List<Widget> elementsBuilder(DataClass data) {
  //da aggiustre l interfaccia in modo da fare un solo element builder
  List<Widget> elements = <Widget>[];
  for (var index in data.text) {
    elements.add(roundedContainer(
        margin: const EdgeInsets.all(15),
        spaceBetween: 15,
        colorText: Colors.white,
        color: Colors.grey[900],
        widht: 150,
        height: 130,
        radiusBorder: 15,
        name: index,
        photo: roundedPhoto(image[0], radius: 15, height: 80, whidht: 150)));
  }
  return elements;
}

class DataClass {
  List<String> image;
  List<String> text;

  DataClass({required this.image, required this.text});
}
