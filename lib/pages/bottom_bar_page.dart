import 'package:fiverr/customWidget/custom_bottom_bar.dart';
import 'package:fiverr/model_provider/rest_client_provider.dart';
import 'package:fiverr/models/home_page.dart';
import 'package:fiverr/pages/account_page.dart';
import 'package:fiverr/pages/message_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model_provider/bottom_bar_provider.dart';
import 'home_page.dart';

class BottomBarPage extends StatelessWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ricostruisce i widget quando viene notificato il cambiamento dai modelProvider
    return ChangeNotifierProvider<RestClientProvider<HomePageResult>>(
      create: (context) => RestClientProvider("http://127.0.0.1:3000"),
      child: const BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  void initState() {
    super.initState();
    final model =
        Provider.of<RestClientProvider<HomePageResult>>(context, listen: false);
    model.getData((p0) => HomePageResult.fromJson(p0));
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RestClientProvider<HomePageResult>>(context);
    if (model.loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return BottomBar(
        context, model.getData(((p0) => HomePageResult.fromJson(p0))));
  }

  Widget BottomBar(BuildContext context, var article) {
    final pageArray = [const HomePage(title: "fvffvfv"), const AccountPage(), const MessagePage()];
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
