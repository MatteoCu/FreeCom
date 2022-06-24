import 'package:fiverr/customWidget/elementList.dart';
import 'package:fiverr/main.dart';
import 'package:fiverr/models/message.dart';
import 'package:flutter/material.dart';

Map<String, dynamic> mess = {
  "message": [
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
    {
      "photo": 'https://picsum.photos/250?image=9',
      "name": "matteo",
      "title": "Titolo",
      "text": "sdadsd",
      "time": "ffdgfgf"
    },
  ]
};

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Message> message = Messages.fromJson(mess).message!;
    return Scaffold(
        appBar: AppBar(title: const Text("Message")),
        body: SafeArea(
            child: ListView.builder(
                itemCount: message.length,
                itemBuilder: (_, int index) {
                  return ElementList(
                      photo: message[index].photo!,
                      title: message[index].name!,
                      text: message[index].text!,
                      time: message[index].time!);
                })));
  }
}
