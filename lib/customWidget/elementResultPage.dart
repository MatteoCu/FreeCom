import 'dart:ffi';

import 'package:fiverr/customWidget/roundedContainer.dart';
import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:flutter/material.dart';

Widget ElementResultPage(
    {required double widht, required double height, required String imgUrl}) {
  return Column(children: [
    roundedContainer(
      photo: roundedPhoto(
        imgUrl,
        radius: 0,
        height: height - 100,
      ),
      name: '',
      color: Colors.grey[800],
      height: height,
      widht: widht,
      radiusBorder: 15,
    ),
    const SizedBox(
      height: 10,
    ),
    Text("dsjdsdjskldj")
  ]);
}
