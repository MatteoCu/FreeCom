import 'package:flutter/material.dart';

enum Theme{dark, light}

//model provider della bottomBar
class StyleProvider extends ChangeNotifier {
   Theme _theme= Theme.dark; //posizione iniziale
  StyleProvider();

  set currentTheme(Theme theme) {//quando viene settatto un novo index notifico agli changeNotifierProvider in ascolto il chambiamento di stato
    _theme= theme;
    notifyListeners();
  }

 Theme get theme => _theme ; //otengo l'index corrente4
}
