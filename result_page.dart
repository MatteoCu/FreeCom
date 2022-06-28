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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: filter(),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ElementResultPage(
                  height: 200,
                  imgUrl: "D",
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    ));
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
