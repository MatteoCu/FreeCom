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
                backgroundColor: Colors.white,
                floating: true,
                expandedHeight: 300,
                bottom: TabBar(
                    labelColor: Colors.black,
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

Column _costomWidgetAppBar(BuildContext context) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const SizedBox(height: 80),
      _titleText(),
      _subTitleText(),
      const SizedBox(
        height: 50,
      ),
      searchBar(context)
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
                expandedHeight: 300,
                bottom: TabBar(
                    labelColor: Colors.black,
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
    margin: const EdgeInsets.only(left: 25, right: 25),
    child: const Text(
      "Discover",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
    ),
  );
}

Widget _subTitleText() {
  return Container(
      height: 22,
      margin: const EdgeInsets.only(left: 25, right: 25, top: 1),
      child: const Text(
        "Discover best freelencer",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Color.fromARGB(255, 255, 255, 255)),
      ));
}
