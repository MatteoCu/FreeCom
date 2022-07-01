import 'package:fiverr/customWidget/roundedContainer.dart';
import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:fiverr/customWidget/rounded_solver_appBra.dart';
import 'package:fiverr/models/result.dart';
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
          _AppBar(
            context,
          ),
          //body con il testo notizia
          ScrollableText(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam pellentesque nec nam aliquam sem et. In aliquam sem fringilla ut. Viverra tellus in hac habitasse platea. Quis varius quam quisque id diam. Scelerisque ferme")
        ],
      ),
    ));
  }

  SliverPersistentHeader _AppBar(
    BuildContext context,
  ) {
    return SliverPersistentHeader(
      delegate: RoundedSilverAppBar(
          //appbar custom
          urlImage: 'https://source.unsplash.com/random?mono+dark',
          expandedHeight: _heightAppBar,
          children: appBarChildren(context)),
      pinned: false, //se resta sempre fissata in alta
    );
  }

  List<Widget> appBarChildren(
    BuildContext context,
  ) =>
      <Widget>[
        const Positioned(
          child: Text(
            "Categoria",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          right: 15,
          top: 20,
        ),
        Positioned(left: 15, bottom: 0, child: nameFreeLence(elem)),

        //freccia indietro
        Positioned(
            left: 15,
            top: 20,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () => Navigator.pop(context),
            )),
      ];
}

SliverList ScrollableText(String text) {
  return SliverList(
      delegate: SliverChildListDelegate(<Widget>[
    Container(
        color: Colors.grey[800],
        child: Container(
            color: Colors.grey[800],
            margin: EdgeInsets.only(right: 25, left: 25, top: 20),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w700,
                height: 1.6,
                fontSize: 15,
              ),
              
            ))),
            filter()
  ]));
}

Widget nameFreeLence(Elements elements) {
  return Container(
      height: 50,
      child: Row(children: [
        roundedPhoto(height: 40, whidht: 40, radius: 40, elements.imgUrl),
        const SizedBox(
          width: 20,
        ),
        Text("djccdkjjjjjjjjjjjj")
      ]));
}


Widget filter() {
  return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          roundedContainer(
              colorText: Colors.white,
              color: Colors.grey[800],
              height: 50,
              radiusBorder: 100,
              name: "ciaofdfdsfdsf"),
          const SizedBox(
            width: 20,
          ),
          roundedContainer(
              colorText: Colors.white,
              color: Colors.grey[800],
              height: 50,
              radiusBorder: 100,
              name: "ciaofdfdsfdsf"),
          const SizedBox(
            width: 20,
          ),
          roundedContainer(
              colorText: Colors.white,
              color: Colors.grey[800],
              height: 50,
              radiusBorder: 100,
              name: "ciaofdfdsfdsf")
        ]),
      ));
}
