import 'package:flutter/material.dart';

Widget searchBar(BuildContext context) {
  return Container(
    height: 55,
    margin: const EdgeInsets.only(right: 15, left: 15, bottom: 30),
    decoration: const BoxDecoration(
        color: Color.fromARGB(255, 66, 66, 66),
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: const TextField(
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(41, 38, 38, 1)),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        border: InputBorder.none,
        labelText: '',
        prefixIcon: Icon(
          Icons.search,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
    ),
  );
}
