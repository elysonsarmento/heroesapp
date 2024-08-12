import 'package:flutter/material.dart';

import '../../../domain/entities/heroes.dart';

class ConnectionsWidget extends StatelessWidget {
  final Heroe? heroItem;

  const ConnectionsWidget({super.key, required this.heroItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Team Affiliation'.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            heroItem?.connections?.groupAffiliation ?? ' - ',
            style: const TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Relatives'.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            heroItem?.connections?.relatives
                    .toString()
                    .replaceAll('[', '')
                    .replaceAll(']', '') ??
                ' - ',
            style: const TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
