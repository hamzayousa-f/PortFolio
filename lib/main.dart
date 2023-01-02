import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/projects.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: "Soho"),
      initialRoute: 'home',
      routes: {
        'home': (conetxt) => MyHome(),
        'about': (context) => MyAbout(),
        'projects': (context) => MyProjects(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
