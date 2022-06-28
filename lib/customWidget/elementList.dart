import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:flutter/material.dart';

class ElementList extends StatelessWidget {
  String title;
  String text;
  String time;
  String photo;
  ElementList(
      {Key? key,
      required this.photo,
      required this.title,
      required this.text,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 12, bottom: 12),
      child: Row(
        children: <Widget>[
          roundedPhoto(photo, height: 60, whidht: 60, radius: 15),
          const SizedBox(width: 15),
          _text(title, text),
          Text(
            time,
            textAlign: TextAlign.right,
            maxLines: 2,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
        ],
      ),
    );
  }
}

Widget _text(String title, String description) {
  return Expanded(
      flex: 2,
      child: Container(
          height: 60,
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
                    fontSize: 19),
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
