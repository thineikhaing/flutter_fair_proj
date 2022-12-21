import 'package:flutter/material.dart';
import 'package:flutter_fair_proj/global/widgets/background_image.dart';
import 'package:flutter_fair_proj/global/widgets/global_app_bar.dart';
import 'package:flutter_fair_proj/global/widgets/text_label.dart';
import 'package:google_fonts/google_fonts.dart';

class NewForm extends StatefulWidget {
  const NewForm({super.key});

  @override
  State<NewForm> createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const BackgroundImage(),
      Scaffold(
          appBar: globalAppBar(context, title: "New Form", actions: [_backButton(context)]),
          // appBar: AppBar(title: const Text("New form")),
          body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextLabel(context,title: "Enter all required fields."),
                  TextLabel(context,title: "Use 'return' to add a new field."),
                ],
              )
            )
          )
    ]);
  }

  Widget _backButton(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: const Color.fromRGBO(93, 90, 180, 1),//Theme.of(context).colorScheme.onPrimary,
    );

    return TextButton(
            style: style,
            onPressed: () {Navigator.pop(context, "From new form page");},
            child: const Text('Back'),
          );
  }
}
