
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: non_constant_identifier_names
Text TextLabel(BuildContext context, {
  double fontsize = 20, String title = ""}) {
      return (Text(
                title,
                style: GoogleFonts.nunito(
                    textStyle:
                        const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
                    fontWeight: FontWeight.w400,
                    fontSize: fontsize), 
              )
        );
    }