import 'package:flutter/material.dart';
import 'package:covid/bottombar.dart';
import 'package:covid/intropages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organ Donar and Receptor',
      theme:
          ThemeData(primarySwatch: Colors.red, accentColor: Colors.redAccent),
      home: IntroScreen(),
    );
  }
}
