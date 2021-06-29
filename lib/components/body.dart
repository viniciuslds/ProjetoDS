import 'package:flutter/material.dart';
import 'package:projetods/components/header_search.dart';
import 'package:projetods/pages/rapidacess.dart';
import 'package:projetods/pages/suscard.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderSearch(size: size),
          CartaoSus(),
          AcessoRapido(),
        ],
      ),
    );
  }
}
