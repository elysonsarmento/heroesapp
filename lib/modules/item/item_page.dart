import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../util/const.dart';
import '../../widget/superhero_avatar.dart';
import 'item_controller.dart';
import 'widgets/appearance_widget.dart';
import 'widgets/biography_widget.dart';
import 'widgets/connections_widget.dart';
import 'widgets/powerstats_widget.dart';
import 'widgets/work_widget.dart';

class ItemPage extends StatefulWidget {
  final int id;
  const ItemPage({
    super.key,
    required this.id,
  });

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  final controller = Modular.get<ItemController>();

  @override
  void initState() {
    controller.getSuperHeroById(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.appName),
      ),
      body: Observer(builder: (context) {
        return Center(
            child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Hero(
                  tag: widget.id,
                  child: SuperheroAvatar(
                    img: controller.superHero?.images?.md,
                    radius: 50.0,
                  ),
                ),
                const SizedBox(
                  height: 13.0,
                ),
                Text(
                  controller.superHero?.name ?? '',
                  style: textTheme.titleLarge,
                ),
                Text(
                  controller.superHero?.biography?.fullName ?? ' - ',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ExpansionPanelList(
                  children: <ExpansionPanel>[
                    ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                              title: Text(
                            'Biography',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ));
                        },
                        body: BiographyWidget(
                          heroItem: controller.superHero,
                        ),
                        isExpanded: true),
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return const ListTile(
                            title: Text(
                          'Appearance',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ));
                      },
                      body: AppearanceWidget(
                        heroItem: controller.superHero,
                      ),
                      isExpanded: true,
                    ),
                    ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                              title: Text(
                            'Work',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ));
                        },
                        body: WorkWidget(
                          heroItem: controller.superHero,
                        ),
                        isExpanded: true),
                    ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                              title: Text(
                            'Power Stats',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ));
                        },
                        body: PowerStatsWidgets(
                          heroItem: controller.superHero,
                        ),
                        isExpanded: true),
                    ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                              title: Text(
                            'Connections',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ));
                        },
                        body: ConnectionsWidget(
                          heroItem: controller.superHero,
                        ),
                        isExpanded: true),
                  ],
                ),
              ],
            ),
          ),
        ));
      }),
    );
  }
}
