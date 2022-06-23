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
              searchBar(context),
              Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text("Categorie",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.apply(color: Colors.white))),
              SingleChildScrollView(
                  //
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: elementsBuilder(
                          DataClass(image: image, text: text)))),
               Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text("Top Rated",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.apply(color: Colors.white))),
              Expanded(child: ListView(scrollDirection: Axis.vertical, children :[roundedPhoto(image[0],height: 400)])
              )
            ],
          ),
        ));
  }
}

Tile({required int index}) {
  return Container(
    padding:EdgeInsets.all(150),
    color: Colors.blueAccent,
  );
}

Widget searchBar(var context) {
  return Container(
    height: 55,
    margin: const EdgeInsets.only(right: 15, left: 15, bottom: 30, top:40),
    decoration: const BoxDecoration(
        color: Color.fromARGB(255, 59, 56, 56),
        borderRadius: BorderRadius.all(Radius.circular(15))),
        child:TextField(
          style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.apply(color: Colors.white),
          cursorColor:const Color(0xFF9E9E9E),
          decoration:const  InputDecoration(
            
          border: InputBorder.none,
          labelText: 'serch category',
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFF9E9E9E),
          ),
          labelStyle: TextStyle(color: Colors.white),
      ),
    ),
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
