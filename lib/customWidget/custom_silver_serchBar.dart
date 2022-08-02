import 'package:fiverr/customWidget/roundedContainer.dart';
import 'package:fiverr/customWidget/search_bar.dart';
import 'package:flutter/material.dart';

List<Widget> _tabsName(List<String> argument) {
  List<Widget> tab = [];

  for (var element in argument) {
    tab.add(Tab(
      text: element,
    ));
  }

  return tab;
}

Widget _Appbar(
    {required List<Widget> children,
    required BuildContext context,
    required List<String> tabs}) {
  return DefaultTabController(
    length: children.length,
    //child tapbar
    child: NestedScrollView(
        //body tapBar
        body: TabBarView(children: children),
        headerSliverBuilder: (context, value) => <Widget>[
              SliverAppBar(
                backgroundColor: Color.fromARGB(255, 102, 102, 102),
                floating: true,
                expandedHeight: 300,
                bottom: TabBar(
                    labelColor: Color.fromARGB(255, 255, 255, 255),
                    labelPadding: const EdgeInsets.only(right: 25, left: 25),
                    indicatorPadding:
                        const EdgeInsets.only(right: 25, left: 25),
                    isScrollable: true,
                    indicatorColor: Color.fromARGB(255, 172, 172, 172),
                    tabs: _tabsName(tabs)),
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    collapseMode: CollapseMode.pin,
                    background: _costomWidgetAppBar(context)),
              ),
            ]),
  );
}

Column _costomWidgetAppBar(BuildContext context) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const SizedBox(height: 10),
      _subTitleText(),
      _titleText(),
      const SizedBox(
        height: 10,
      ),
      Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: searchBar(context),
            ),
            SizedBox(
                height: 45,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                    child: const Icon(Icons.clear_all)))
          ])
    ],
  );
}

Widget appbar(
    {required List<Widget> children,
    required BuildContext context,
    required List<String> tabs}) {
  return DefaultTabController(
    length: children.length,
    //child tapbar
    child: NestedScrollView(
        //body tapBar
        body: TabBarView(children: children),
        headerSliverBuilder: (context, value) => <Widget>[
              SliverAppBar(
                //backgroundColor: Colors.white,
                floating: true,
                expandedHeight: 200,
                bottom: TabBar(
                    labelColor:const Color.fromARGB(255, 255, 255, 255),
                    labelPadding: const EdgeInsets.only(right: 25, left: 25),
                    indicatorPadding:
                        const EdgeInsets.only(right: 25, left: 25),
                    isScrollable: true,
                    indicatorColor: const Color(0xFF000000),
                    tabs: _tabsName(tabs)),
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    collapseMode: CollapseMode.pin,
                    background: _costomWidgetAppBar(context)),
              ),
            ]),
  );
}

Widget _titleText() {
  return Container(
    height: 50,
    margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
    child: const Text(
      "Il cerca semi",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)),
    ),
  );
}

Widget _subTitleText() {
  return Container(
      height: 22,
      margin: const EdgeInsets.only(left: 25, right: 25, top: 1),
      child: const Text(
        "Benvenuto nome utente",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Color.fromARGB(255, 255, 255, 255)),
      ));
}
