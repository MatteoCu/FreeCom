import 'package:fiverr/customWidget/roundedContainer.dart';
import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:fiverr/customWidget/rounded_solver_appBra.dart';
import 'package:fiverr/models/home_page.dart';
import 'package:flutter/material.dart';

const double _heightAppBar = 400;

class ProductPage extends StatelessWidget {
  final Elements elem;
  const ProductPage({
    required this.elem,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          _AppBar(context, elem),
          //body con il testo notizia
          body(elem,
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam pellentesque nec nam aliquam sem et. In aliquam sem fringilla ut. Viverra tellus in hac habitasse platea. Quis varius quam quisque id diam. Scelerisque ferme")
        ],
      ),
    ));
  }

  SliverPersistentHeader _AppBar(BuildContext context, Elements model) {
    return SliverPersistentHeader(
      delegate: RoundedSilverAppBar(
          //appbar custom
          urlImage: 'https://source.unsplash.com/random?mono+dark',
          expandedHeight: _heightAppBar,
          children: appBarChildren(context, model)),
      pinned: false, //se resta sempre fissata in alta
    );
  }

  List<Widget> appBarChildren(BuildContext context, Elements model) => <Widget>[
        Positioned(
          right: 15,
          top: 20,
          child: roundedContainer(
            colorText: Colors.white,
            fontsize: 20,
              color:  const Color.fromARGB(118, 0, 0, 0),
              height: 25,
              radiusBorder: 20,
              name: "fdfdf"),
        ),
        Positioned(left: 15, bottom: 0, child: nameFreeLence(elem)),

        //freccia indietro
        Positioned(
            left: 15,
            top: 20,
            child:Container(decoration:const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(113, 0, 0, 0),
        ),child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () => Navigator.pop(context),
            )),)
      ];
}

SliverList body(Elements elem, String text) {
  return SliverList(
      delegate: SliverChildListDelegate(<Widget>[
    Container(
        color: Colors.grey[850],
        child: Container(
            color: Colors.grey[850],
            margin: const EdgeInsets.only(right: 25, left: 25, top: 20),
            child: Text(
              elem.description,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                height: 1.6,
                fontSize: 15,
              ),
            ))),

    //tableOfService("elem.services")
  ]));
}

Widget nameFreeLence(Elements elem) {
  return SizedBox(
      height: 50,
      child: Row(children: [
        roundedPhoto(height: 40, whidht: 40, radius: 40, "elements.imgUrl"),
        const SizedBox(
          width: 20,
        ),
        Text(elem.user)
      ]));
}
