import 'package:flutter/material.dart';

import '../../../domain/entities/entities.dart';

class WorkWidget extends StatelessWidget {
  const WorkWidget({super.key, required this.heroItem});

  final Heroe? heroItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Base'.toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        heroItem?.work?.base ?? ' - ',
        style: const TextStyle(fontWeight: FontWeight.w300),
      ),
    );
  }
}
