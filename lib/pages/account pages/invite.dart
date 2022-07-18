import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_share/flutter_share.dart';

class Invite extends StatelessWidget {
  const Invite({Key? key}) : super(key: key);

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('invite friend'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: share,
              child: const Text('invite friend to dowload app'),
            ),
          ],
        ),
      ),
    );
  }
}
