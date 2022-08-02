import 'package:flutter/material.dart';

Widget roundedContainer(
        {required Color? color, //colore roundedContainer
        required double height, //altezza roundedContainer
        required double radiusBorder, //radius bordo
        required String name, //testo roundedContainer
        EdgeInsets? margin, //distanza dagli altri widget
        Color? colorText, // colore del testo
        double fontsize = 15,
        double?
            widht, //larghezza roundedContainer se non specificata la si calcola in automatico
        double spaceBetween =
            10, //spazio tra testo e foto o iconnel roundedContainer
        Widget? photo /*pui aggiungere foto o icn*/}) =>
    SizedBox(
        child: Container(
      height: height,
      margin: margin,
      width: widht,
      //if in-line per stabilire il child del container
      // ignore: sort_child_properties_last
      child: photo == null
          ? Container(

              //container con il testo
              margin: const EdgeInsets.all(15),

              //container con il testo
              child: Center(
                  child: Text("$name ",
                      style: TextStyle(
                          color: colorText, fontSize: fontsize)))) //margini
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                photo, //widget specificato nella funzione
                SizedBox(height: spaceBetween),
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "$name ", //spazio alla fine per non fare attacare il sto alla fine
                      style: TextStyle(color: colorText, fontSize: fontsize),
                    )),
              ],
            ),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radiusBorder)), //bordi
    ));
