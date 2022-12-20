import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(
            padding: const EdgeInsets.all(5),
            width: 40,
            child: Image.asset("assets/images/logo.png"),
          ),
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text("Fair Forms",
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
                    fontWeight: FontWeight.w600,
                    fontSize: 24)),
          )),
    );
  }
}
