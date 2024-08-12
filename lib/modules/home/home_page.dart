import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/entities/entities.dart';
import 'settings_page.dart';
import '../../util/const.dart';
import '../../widget/loading_widget.dart';
import '../../widget/superhero.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    controller.getHeroes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            Constants.appName,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                var router = MaterialPageRoute(builder: (BuildContext context) {
                  return const Settings();
                });

                Navigator.of(context).push(router);
              },
              tooltip: 'Config',
            ),
          ],
        ),
        body: controller.loading ? const LoadingWidget() : _buildList(),
      );
    });
  }

  _buildList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.builder(
        itemCount: controller.responseList.length,
        itemBuilder: (BuildContext context, int index) {
          Heroe heroItem = controller.responseList[index];

          return Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SuperHero(
              heroItem: heroItem,
              onTap: (item) {
                Modular.to.navigate('/item/${item.id}', arguments: item.id);
              },
            ),
          );
        },
      ),
    );
  }
}
