import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
PreferredSizeWidget globalAppBar(BuildContext context,
    {List<Widget>? actions, String title = ""}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(45.0),
    child: AppBar(
          leading: Container(
            padding: const EdgeInsets.all(8),
            width: 40,
            child: Image.asset("assets/images/logo.png"),
          ),
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(title,
                style: GoogleFonts.nunito(
                    textStyle:
                        const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
                    fontWeight: FontWeight.w600,
                    fontSize: 24)),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: actions
      ),
    // child: AppBar(
    //     centerTitle: true,
    //     title: Text(
    //       title,
    //       style: Theme.of(context)
    //           .textTheme
    //           .subtitle1!
    //           .copyWith(color: Colors.white),
    //     ),
    //     actions: actions),
  );
}
