import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:flutter/material.dart';

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
                      child: Text(
                    "Matteo Curia",
                    style: TextStyle(fontSize: 20),
                  ))
                ],
              )),
          SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              category("Buying"),
              subCategoryButton(
                  icon: Icons.account_box_outlined, text: "post a request"),
              subCategoryButton(icon: Icons.edit, text: "manage a request"),//item page
              category("General"),
              subCategoryButton(icon: Icons.settings, text: "setting"),
              subCategoryButton(icon: Icons.send, text: "invite friends"),
              subCategoryButton(icon: Icons.people, text: "became a seller"),
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
      child: Padding(
          padding: const EdgeInsets.all(10),
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
          )));
}
