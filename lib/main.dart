import 'package:flutter/material.dart';
import 'package:projetods/pages/home.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // root da aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto SUS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
