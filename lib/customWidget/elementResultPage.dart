import 'dart:ffi';

import 'package:fiverr/customWidget/roundedContainer.dart';
import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:flutter/material.dart';

Widget ElementResultPage(
    {required double height,
    required EdgeInsets padding,
    required String imgUrl}) {
  return Padding(
      padding: padding,
      child: Column(children: [
        roundedContainer(
            photo: roundedPhoto(
              imgUrl,
              radius: 0,
              height: height - 100,
            ),
            color: Colors.grey[800],
            height: 300,
            radiusBorder: 15,
            name: "dmsksdmkdd"),
        const SizedBox(
          height: 10,
        ),
        Text("dsjdsdjskldj")
      ]));
}
