import 'package:flutter/material.dart';

import '../../../domain/entities/entities.dart';

class AppearanceWidget extends StatelessWidget {
  const AppearanceWidget({super.key, required this.heroItem});

  final Heroe? heroItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Gender'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem?.appearance?.gender ?? '',
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            'Race'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem?.appearance?.race
                    .toString()
                    .replaceAll('[', '')
                    .replaceAll(']', '') ??
                '',
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            'Height'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem?.appearance?.height
                    .toString()
                    .replaceAll('[', '')
                    .replaceAll(']', '') ??
                '',
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            'Weight'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem?.appearance?.weight
                    .toString()
                    .replaceAll('[', '')
                    .replaceAll(']', '') ??
                '',
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            'Eye Color'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem?.appearance?.eyeColor ?? '',
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
