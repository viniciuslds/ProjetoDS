import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetods/pages/docs.dart';
import 'package:projetods/pages/sus.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeStateInfo();
  }
}
class _HomeStateInfo extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
        children: <Widget>[
          OutlinedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.zero, // <-- Add this
              padding: EdgeInsets.only(left: 0, top: 0, right: 20, bottom: 0), // <-- and this
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DocsScreen()),
              );
            },
            icon: Image.asset('../assets/img/Cartaosus.png', fit: BoxFit.cover, width: 100,  alignment: Alignment.centerLeft,),
            label: Text("Como obter meu cartão SUS ?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
          ),
        ],
      ),
    );
  }
}