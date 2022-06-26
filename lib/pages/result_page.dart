import 'package:fiverr/customWidget/elementResultPage.dart';
import 'package:flutter/material.dart';
import 'package:fiverr/customWidget/roundedContainer.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: IconButton(
                  onPressed: (() {}), icon: const Icon(Icons.arrow_back_sharp)),
              actions: [
                IconButton(onPressed: (() {}), icon: const Icon(Icons.share))
              ],
            ),
            body: SingleChildScrollView(
                child: SingleChildScrollView(
                    child: Column(children: [
              filter(),
              ElementResultPage(
                  padding: const EdgeInsets.all(15),
                  imgUrl:
                      'https://i0.wp.com/www.giacomocusano.com/wp-content/uploads/2016/07/coastal-wash-web.jpg?resize=1024%2C640&ssl=1',
                  height: 100)
            ])))));
  }
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
