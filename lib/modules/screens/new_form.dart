import 'package:flutter/material.dart';
import 'package:flutter_fair_proj/global/widgets/background_image.dart';
import 'package:flutter_fair_proj/global/widgets/global_app_bar.dart';

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
         appBar: globalAppBar(context, title: "New Form"),
        // appBar: AppBar(title: const Text("New form")),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Center(child: Text("New form")),
            _backButton(context),
          ],
        )
        )
    ]);
  }

    Widget _backButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Back"),
        onPressed: () {
          Navigator.pop(context, "From second page");
        },
      ),
    );
  }
}