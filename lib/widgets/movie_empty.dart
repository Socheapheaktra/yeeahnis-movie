import 'package:flutter/material.dart';

class MovieEmpty extends StatelessWidget {
  const MovieEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Text(
        'No Content!',
        style: theme.textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
