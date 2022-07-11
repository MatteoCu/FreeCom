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
                      child: roundedPhoto("d",
                          height: 60, whidht: 60, radius: 60)),
                  const Center(
                    child: Text("Matteo Curia"),
                  )
                ],
              )),
          SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              category("buying"),
              subCategoryButton(
                  icon: Icons.account_box_outlined, text: "post a request")
            ],
          ))
        ],
      ),
    ));
  }
}

Widget category(String title) {
  return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ));
}

Widget subCategoryButton({required IconData icon, required String text}) {
  return GestureDetector(
      onTap: (() {}),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Icon(icon),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          Expanded(child: Container()),
          const Icon(Icons.arrow_forward_ios),
          const SizedBox(
            width: 15,
          )
        ],
      ));
}
