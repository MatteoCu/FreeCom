import 'package:fiverr/customWidget/roundedContainer.dart';
import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:flutter/material.dart';

Widget ElementResultPage(String description,
    {required double height, required String imgUrl}) {
  return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Stack(children: [
        Column(children: [
          Expanded(
              child: roundedPhoto(
            imgUrl,
            whidht: 3000,
            radius: 10,
            height: height,
          )),
          const SizedBox(
            height: 16,
          ),
          Text(description),
          const SizedBox(
            height: 16,
          ),
        ]),
      ]));
}
