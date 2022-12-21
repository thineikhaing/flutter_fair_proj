// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:flutter_fair_proj/modules/screens/FormTextfields.dart';
import 'package:flutter_fair_proj/global/widgets/DynTextFields.dart';
import 'package:flutter_fair_proj/modules/screens/ScanQr.dart';
import 'package:flutter_fair_proj/modules/screens/dashboard.dart';
import 'package:flutter_fair_proj/modules/screens/Home.dart';
import 'package:flutter_fair_proj/modules/screens/Login.dart';
import 'package:flutter_fair_proj/modules/screens/NewForm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
      title: 'Fair Forms',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),       
      ),
      home: const Home(),
      initialRoute: '/',
      routes: {
         // When navigating to the "/" route, build the FirstScreen widget.

          // When navigating to the "/second" route, build the SecondScreen widget.
          '/new_form': (context) => const FormTextfields(),
          '/login': (context) => const LoginPage(),
          '/dashboard': (context) => const Dashboard(),
          '/scan_qr':(context) => const ScanScreen(),
      },
    )
    );
  }
}