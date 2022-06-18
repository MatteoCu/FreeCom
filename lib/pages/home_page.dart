import 'package:fiverr/customWidget/roundedConatiner.dart';
import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:flutter/material.dart';

var image = ['https://picsum.photos/250?image=9'];
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: elementsBuilder(
                          DataClass(image: image, text: text)))),
              Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text("Categorie",
                      style: Theme.of(context).textTheme.headline5)),
            ],
          ),
        ));
  }
}

List<Widget> elementsBuilder(DataClass data) {
  List<Widget> elements = <Widget>[];
  for (var index in data.text) {
    elements.add(roundedContainer(
        margin: const EdgeInsets.all(15),
        spaceBetween: 15,
        colorText: Colors.white,
        color: Colors.grey[900],
        widht: 300,
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
