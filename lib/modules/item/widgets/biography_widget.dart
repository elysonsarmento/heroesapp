import 'package:flutter/material.dart';

import '../../../domain/entities/entities.dart';

class BiographyWidget extends StatelessWidget {
  const BiographyWidget({super.key, required this.heroItem});

  final Heroe? heroItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Alter Ego(s)'.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            heroItem?.biography?.alterEgos ?? ' - ',
            style: const TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Aliases'.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            heroItem?.biography?.aliases
                    .toString()
                    .replaceAll('[', '')
                    .replaceAll(']', '') ??
                ' - ',
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            'Place of birth'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem?.biography?.placeOfBirth ?? ' - ',
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            'First Appearance'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem?.biography?.firstAppearance ?? ' - ',
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            'Creator'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem?.biography?.publisher ?? ' - ',
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
