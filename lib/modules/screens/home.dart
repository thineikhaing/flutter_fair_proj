import 'package:flutter/material.dart';
import 'package:flutter_fair_proj/global/widgets/background_image.dart';
import 'package:flutter_fair_proj/global/widgets/full_width_button.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_fair_proj/global/widgets/global_app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const BackgroundImage(),
      Scaffold(
        appBar: globalAppBar(context, title: "Fair Forms"),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
          child: Column(
            children: [
              const SizedBox(height: 120),
              FullWidthButton(context, "Scan QR Code"),
              const SizedBox(height: 100),
              FullWidthButton(context, "Sign In"),
              const SizedBox(height: 30),
              Text(
                "Sign in to view your forms",
                style: GoogleFonts.nunito(
                    textStyle:
                        const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      )
    ]);
  }


}
