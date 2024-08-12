import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../domain/entities/entities.dart';

class PowerStatsWidgets extends StatelessWidget {
  final Heroe? heroItem;

  const PowerStatsWidgets({super.key, required this.heroItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            "${"Intelligence".toUpperCase()} - ${heroItem?.powerstats?.intelligence}%",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem?.powerstats?.intelligence != null
                ? heroItem!.powerstats!.intelligence!.toDouble() / 100.0
                : 0.0,
            barRadius: const Radius.circular(16),
            progressColor: Colors.blue,
          ),
        ),
        ListTile(
          title: Text(
            "${"Strength".toUpperCase()} - ${heroItem?.powerstats?.strength}%",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem?.powerstats?.strength != null
                ? heroItem!.powerstats!.strength!.toDouble() / 100.0
                : 0.0,
            barRadius: const Radius.circular(16),
            progressColor: Colors.orange,
          ),
        ),
        ListTile(
          title: Text(
            "${"Speed".toUpperCase()} - ${heroItem?.powerstats?.speed}%",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem?.powerstats?.speed != null
                ? heroItem!.powerstats!.speed!.toDouble() / 100.0
                : 0.0,
            barRadius: const Radius.circular(16),
            progressColor: Colors.green,
          ),
        ),
        ListTile(
          title: Text(
            "${"Durability".toUpperCase()} - ${heroItem?.powerstats?.durability}%",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem?.powerstats?.durability != null
                ? heroItem!.powerstats!.durability!.toDouble() / 100.0
                : 0,
            barRadius: const Radius.circular(16),
            progressColor: Colors.orangeAccent,
          ),
        ),
        ListTile(
          title: Text(
            "${"Power".toUpperCase()} - ${heroItem?.powerstats?.power}%",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem?.powerstats?.power != null
                ? heroItem!.powerstats!.power!.toDouble() / 100.0
                : 0.0,
            barRadius: const Radius.circular(16),
            progressColor: Colors.red,
          ),
        ),
        ListTile(
          title: Text(
            "${"Combat".toUpperCase()} - ${heroItem?.powerstats?.combat}%",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem?.powerstats?.combat != null
                ? heroItem!.powerstats!.combat!.toDouble() / 100.0
                : 0.0,
            barRadius: const Radius.circular(16),
            progressColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
