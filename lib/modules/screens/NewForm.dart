import 'package:flutter/material.dart';
import 'package:flutter_fair_proj/global/widgets/BackButton.dart';
import 'package:flutter_fair_proj/global/widgets/GlobalAppBar.dart';
import 'package:flutter_fair_proj/global/widgets/TextLabel.dart';

class NewForm extends StatefulWidget {
  const NewForm({super.key});

  @override
  State<NewForm> createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
          appBar: globalAppBar(context, title: "New Form", actions: [backButton(context)]),
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
        );
  }

  
}
