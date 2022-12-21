import 'package:flutter/material.dart';
import 'package:flutter_fair_proj/global/widgets/FullWidthButton.dart';
import 'package:flutter_fair_proj/global/widgets/GlobalAppBar.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: globalAppBar(context, title: "Fair Forms"),
        body: Container(
              decoration: const BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage("assets/images/bg.png"),
                            fit: BoxFit.cover,
                          ),
                      ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
                child: Column(
                  children: [
                    const SizedBox(height: 240),
                    FullWidthButton(context, title: "Scan QR Code", routename: "/scan_qr"),
                    const SizedBox(height: 80),
                    FullWidthButton(context, title: "Sign In", routename: "/login"),
                    const SizedBox(height: 30),

                    TextButton(onPressed: ()=>{Navigator.pushNamed(context, '/dashboard')}, 
                      child: Text("Go to dashboard",
                      style: GoogleFonts.nunito(
                              textStyle: const TextStyle(color: Color.fromRGBO(93, 90, 180, 1)),
                              fontWeight: FontWeight.w300,
                              fontSize: 16))),
                    
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
        ),
        
      
     );
  }


}
