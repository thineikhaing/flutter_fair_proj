import 'package:flutter/material.dart';

Widget backButton(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: const Color.fromRGBO(93, 90, 180, 1),//Theme.of(context).colorScheme.onPrimary,
    );

    return TextButton(
            style: style,
            onPressed: () {Navigator.pop(context, "From new form page");},
            child: const Text('Back'),
          );
  }