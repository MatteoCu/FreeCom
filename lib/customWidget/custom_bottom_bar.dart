import 'package:fiverr/model_provider/bottom_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contetx) {
    //consumer per ottenere le informazioni dallo stato
    return Consumer<BottomBarProvider>(builder: (context, bottomBar, _) {
      return BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[400],
          onTap: (int index) {
            //consente di notificare un cambiamento nello stato || listen: false non effetua il rirendering del componenete
            Provider.of<BottomBarProvider>(context, listen: false)
                .setIndex(index);
          },
          //index corrente dal consumer
          currentIndex: bottomBar.index,
          items: [
            //elementi bottomAppBar
            _navigationBarItem("home page", Icons.home_filled),
            _navigationBarItem("discover page", Icons.search),
            _navigationBarItem("message", Icons.message),
            
          ]);
    });
  }

  BottomNavigationBarItem _navigationBarItem(String name, IconData icon) =>
      BottomNavigationBarItem(
          icon: Icon(
            icon,
          ),
          label: name);
}
