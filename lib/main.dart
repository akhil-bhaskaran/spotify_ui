import 'package:flutter/material.dart';
import 'package:spotify/pages/home_page.dart';
import 'package:spotify/pages/navigating.dart';
import 'package:spotify/pages/starting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'popins'),
        debugShowCheckedModeBanner: false,
        home: const Navigating());
  }
}
