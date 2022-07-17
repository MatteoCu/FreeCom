import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List<String> CATEGORY = ["Logo", "Developement", "Course"];
const List<String> SUB_CATEGORY = [...CATEGORY];

class PostRequest extends StatelessWidget {
  const PostRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Post a service")),
            body: Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        category("add a description"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: const TextField(
                              textAlignVertical: TextAlignVertical.top,
                              maxLines: null,
                              expands: true,
                              maxLength: 300,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  labelText: "description max 300 charapter",
                                  border: OutlineInputBorder()),
                            )),
                        category("category"),
                        dropDownButton(CATEGORY),
                        category("sub category"),
                        dropDownButton(SUB_CATEGORY),
                        category("price"),
                        const SizedBox(
                            height: 70,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlignVertical: TextAlignVertical.top,
                              maxLines: null,
                              expands: true,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  labelText: "minumum price",
                                  border: OutlineInputBorder()),
                            )),
                            const SizedBox(height: 20,),
                            const SizedBox(
                            height: 70,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlignVertical: TextAlignVertical.top,
                              maxLines: null,
                              expands: true,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  labelText: "standard price",
                                  border: OutlineInputBorder()),
                            )),
                            const SizedBox(height: 20,),
                            const SizedBox(
                            height: 70,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlignVertical: TextAlignVertical.top,
                              maxLines: null,
                              expands: true,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  labelText: "premium price",
                                  border: OutlineInputBorder()),
                            )),

                      ]),
                      
                ))));
  }
}

Widget dropDownButton(List<String> listName) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: DropdownButton<String>(
        isExpanded: true,
        value: listName[0],
        style: const TextStyle(color: Colors.white),
        underline: Container(
          height: 2,
          color: Colors.greenAccent,
        ),
        onChanged: (var a) {},
        items: listName.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ));
}

Widget category(String title) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ));
}
