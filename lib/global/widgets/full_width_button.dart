import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_fair_proj/modules/screens/new_form.dart';

// ignore: non_constant_identifier_names
Widget FullWidthButton(BuildContext context, String title) {
  return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
          side: const BorderSide(
              width: 1, color: Color.fromRGBO(93, 90, 180, 1))),
      minWidth: double.infinity,
      height: 60,
      color: Colors.white,
      textColor: const Color.fromRGBO(93, 90, 180, 1),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NewForm(),
            settings: const RouteSettings(arguments: "Data From first page"),
          ),
        );
      },
      child: Text(title,
          style: GoogleFonts.nunito(
              textStyle: const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
              fontWeight: FontWeight.w300,
              fontSize: 24)));
}
