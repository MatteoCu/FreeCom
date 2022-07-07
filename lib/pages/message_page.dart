import 'dart:html';

import 'package:flutter/material.dart';

Future<ChatMessage> message(
    {required String user, required String message}) async {
  await Future<void>.delayed(const Duration(seconds: 1));
  return ChatMessage(username: user, message: message);
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
            body: Stack(fit: StackFit.expand,children: <Widget>[
              StreamBuilder(
                stream: _chat(),
                builder: (BuildContext context,
                    AsyncSnapshot<ChatMessage> snapshot) {
                  if (snapshot.hasData) {
                    _chatMessages.add(snapshot.data!);

                    return SingleChildScrollView(child: SizedBox(child: Column(children: chat(_chatMessages))));
                  } //end if
                  return const LinearProgressIndicator();
                },
              ),
              Positioned(bottom: 0,child:SizedBox(width: MediaQuery.of(context).size.width,child:TextField() ,) ),
            ])));
  }
}

class ChatMessage {
  String message;
  String username;
  ChatMessage({required this.username, required this.message});
}

List<Widget> chat(List<ChatMessage> chatMessages) {
  List<Widget> message = [];
  for (int index = 0; index < chatMessages.length; index++) {
    final ChatMessage chatItem = chatMessages[index];
    message.add(Row(
        // user name
        children: [
          Text(
            chatItem.username,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(width: 15)
          // message
          ,
          Text(
            chatItem.message,
            style: TextStyle(
                fontSize: 20,
                // use different colors for different people
                color:
                    chatItem.username == 'Trump' ? Colors.pink : Colors.blue),
          ),
        ]));
  }
  return message;
}
/*Container(
      padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
      child: Align(
        alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
          ),
          padding: EdgeInsets.all(16),
          child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
        ),
      ),
    );*/