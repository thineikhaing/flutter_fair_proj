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
                  textStyle:
                      const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
                  fontWeight: FontWeight.w600,
                  fontSize: 24)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
        child: Column(
          children: [
            const SizedBox(height: 150),

            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: const BorderSide(
                        width: 1, color: Color.fromRGBO(93, 90, 180, 1))),
                minWidth: double.infinity,
                height: 60,
                color: Colors.white,
                textColor: const Color.fromRGBO(93, 90, 180, 1),
                onPressed: () {},
                child: Text("Scan QR Code",
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(93, 90, 180, 1)),
                        fontWeight: FontWeight.w300,
                        fontSize: 24))),

            const SizedBox(height: 120),

            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: const BorderSide(
                        width: 1, color: Color.fromRGBO(93, 90, 180, 1))),
                minWidth: double.infinity,
                height: 60,
                color: Colors.white,
                textColor: const Color.fromRGBO(93, 90, 180, 1),
                onPressed: () {},
                child: Text("Sign In",
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(93, 90, 180, 1)),
                        fontWeight: FontWeight.w300,
                        fontSize: 24))),

            const SizedBox(height: 30),
            Text("Sign in to view your forms",
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),),
          ],
        ),
      ),
    );
  }
}
