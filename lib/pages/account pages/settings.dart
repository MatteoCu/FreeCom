import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Column(children: <Widget>[
        switchButton("Theme"),
        switchButton("push notification")
      ]),
    ));
  }
}

Widget switchButton(String text) => Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          Expanded(child: Container()),
          CupertinoSwitch(value: false, onChanged: (_) {}),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
