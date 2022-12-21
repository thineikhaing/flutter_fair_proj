import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fair_proj/global/widgets/BackButton.dart';
import 'package:flutter_fair_proj/global/widgets/GlobalAppBar.dart';
import 'package:flutter_fair_proj/global/widgets/TextLabel.dart';

class FormTextfields extends StatefulWidget {
  const FormTextfields({super.key});

  @override
  FormTextfieldsState createState() => FormTextfieldsState();
}

class FormTextfieldsState extends State<FormTextfields> {
  // ignore: prefer_final_fields
  List<TextEditingController> _controllers = [];
  // ignore: prefer_final_fields
  List<TextField> _fields = [];

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
          // extendBodyBehindAppBar: true,
          appBar: globalAppBar(context,
              title: "Fair Forms", actions: [backButton(context)]),
          body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const SizedBox(height: 100),
                      TextLabel(context, title: "Enter all required fields."),
                      TextLabel(context,
                          title: "Use 'return' to add a new field."),
                      _addTile(),
                      Expanded(child: _listView()),
                      _okButton(),
                    ],
                  ))));
  }

  Widget _addTile() {
    return ListTile(
      title: const Icon(Icons.add),
      onTap: () {
        final controller = TextEditingController();
        final field = TextField(
          controller: controller,
          style: const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
          // autofocus: true,
          decoration: InputDecoration(
            hintText: "Type Each Field On a New Line",
            hintStyle: const TextStyle(color: Color.fromRGBO(93, 90, 180, 0.5)),
            labelText: "question${_controllers.length + 1}",
            labelStyle: const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(93, 90, 180, 1)),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(93, 90, 180, 1)),
            ),

            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(93, 90, 180, 1)),
            ),
            // border: OutlineInputBorder(),
            // labelText: "name${_controllers.length + 1}",
          ),
        );

        setState(() {
          _controllers.add(controller);
          _fields.add(field);
        });
      },
    );
  }

  Widget _listView() {
    return ListView.builder(
      itemCount: _fields.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(5),
          child: _fields[index],
        );
      },
    );
  }

  Widget _okButton() {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return ElevatedButton(
      onPressed: () async {
        String text = _controllers
            .where((element) => element.text != "")
            .fold("", (acc, element) => acc += "${element.text}\n");
        final alert = AlertDialog(
          title: Text("Count: ${_controllers.length}"),
          content: Text(text),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
        await showDialog(
          context: context,
          builder: (BuildContext context) => alert,
        );
        setState(() {});
      },
      child: const Text("Submit"),
    );
  }
}
