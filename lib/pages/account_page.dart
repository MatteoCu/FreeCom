import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.25 + 30,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: Colors.greenAccent,
                  ),
                  Positioned(
                      left: 20,
                      top: MediaQuery.of(context).size.height * 0.25 - 30,
                      child:
                          roundedPhoto("d", height: 60, whidht: 60, radius: 60))
                ],
              ))
        ],
      ),
    ));
  }
}
