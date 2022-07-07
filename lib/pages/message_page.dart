import 'dart:html';

import 'package:fiverr/customWidget/search_bar.dart';
import 'package:flutter/material.dart';

Future<ChatMessage> message(
    {required String user, required String message}) async {
  await Future<void>.delayed(const Duration(seconds: 1));
  return ChatMessage(username: user, message: message, isReciver: false);
}

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  // This list holds the conversation
  // the ChatMessage class was declared above
  final List<ChatMessage> _chatMessages = [];

  // More messages will be yielded overtime
  Stream<ChatMessage> _chat() async* {
    for (int i = 0; i < 10; i++) {
      yield await message(
          user: "thomas turbato",
          message: "ciao"); //todo mettere richiesta http quando
      //todo invio un messaggio lo stream si aggiorna perche notifica allo stream un nuovo messaggio
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Ernesto loEmo'),
            ),
            body: Stack(fit: StackFit.expand, children: <Widget>[
              StreamBuilder(
                stream: _chat(),
                builder: (BuildContext context,
                    AsyncSnapshot<ChatMessage> snapshot) {
                  if (snapshot.hasData) {
                    _chatMessages.add(snapshot.data!);

                    return SingleChildScrollView(
                        child: SizedBox(
                            child: Column(children: chat(_chatMessages))));
                  } //end if
                  return const Center(child: CircularProgressIndicator());
                },
              ),
              Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: messageTextField(),
                  )),
            ])));
  }
}

class ChatMessage {
  bool isReciver;
  String message;
  String username;
  ChatMessage(
      {required this.username, required this.message, required this.isReciver});
}

List<Widget> chat(List<ChatMessage> chatMessages) {
  List<Widget> message = [];
  for (int index = 0; index < chatMessages.length; index++) {
    final ChatMessage chatItem = chatMessages[index];
    message.add(Row(
        // user name
        children: [
          Container(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              alignment:
                  (chatItem.isReciver ? Alignment.topLeft : Alignment.topRight),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (chatItem.isReciver
                      ? Colors.grey.shade200
                      : Colors.blue[200]),
                ),
                padding:const EdgeInsets.all(10),
                child: Text(
                  chatItem.message,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          )
        ]));
  }
  return message;
}
/*Container(
      padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
      child: Align(
        alignment: (chatItem.isReciver  ?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (chatItem.isReciver ?Colors.grey.shade200:Colors.blue[200]),
          ),
          padding: EdgeInsets.all(16),
          child: Text(chatItem.message, style: TextStyle(fontSize: 15),),
        ),
      ),
    );*/

Widget messageTextField() {
  return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))),
            hintText: 'Enter a message',
          )));
}
