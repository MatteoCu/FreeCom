import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:flutter/material.dart';

ElementList(
    {required String photo, required String title, required String text}) {
  return Padding(
    padding: const EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
    child: Row(
      children: <Widget>[
        roundedPhoto(photo, height: 70, whidht: 70, radius: 22),
        const SizedBox(width: 20),
        _text(title, text),
      ],
    ),
  );
}

Widget _text(String title, String description) {
  return Expanded(
      flex: 2,
      child: Container(
          height: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                textAlign: TextAlign.start,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                maxLines: 2,
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ],
          )));
}
