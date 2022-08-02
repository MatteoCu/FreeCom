import 'package:fiverr/customWidget/custom_bottom_bar.dart';
import 'package:fiverr/model_provider/rest_client_provider.dart';
import 'package:fiverr/models/home_page.dart';
import 'package:fiverr/pages/account_page.dart';
import 'package:fiverr/pages/message_page.dart';
import 'package:fiverr/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model_provider/bottom_bar_provider.dart';


class BottomBarPage extends StatelessWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ricostruisce i widget quando viene notificato il cambiamento dai modelProvider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RestClientProvider<HomePageResult>>(
          create: (context) => RestClientProvider("http://127.0.0.1:3000/home"),
          //child: const BottomBar3(),
        )
      ],
      child: const BottomBar3(),
    );
  }
} //todo fare tanti change notifier per ogni client da dove scaricare i diversi model

class BottomBar3 extends StatefulWidget {
  const BottomBar3({Key? key}) : super(key: key);

  @override
  State<BottomBar3> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar3> {
  @override
  void initState() {
    //todo salvare in diversi model i diversi dowload e passarli alle altri classi per dipendecy injection
    super.initState();
    final homepage =
        Provider.of<RestClientProvider<HomePageResult>>(context, listen: false);
    homepage.getData((p0) => HomePageResult.fromJson(p0));
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RestClientProvider<HomePageResult>>(context);
    if (model.loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return BottomBar(context, model.model);
  }

  Widget BottomBar(BuildContext context, HomePageResult model) {
    final pageArray = [
      HomePage(model, "Matteo"),
      const AccountPage(),
      const MessagePage(),
    ];
    return ChangeNotifierProvider<BottomBarProvider>(
        create: (context) => BottomBarProvider(),
        child:
            Consumer<BottomBarProvider>(builder: (context, bottomBar, child) {
          return Scaffold(
              body: pageArray[bottomBar.index],
              bottomNavigationBar: const CustomBottomNavigationBar());
        }));
  }
}
