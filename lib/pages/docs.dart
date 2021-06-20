import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetods/pages/sus.dart';

class DocsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DocsPageState();
  }
}
class _DocsPageState extends State<DocsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Serviços',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge),
              label: 'Perfil',
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            AppBar(
              title: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 0, right: 0,bottom: 0),
                      child: Text("Doocumentação"),
                    )
                  ],
                ),
              ),

              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.pop(context,true);
                },
              ),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.green,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10, right: 20,bottom: 0),
              child: Column(
                children: [
                  Image.asset('../assets/img/avatar.png', width: 350, alignment: Alignment.center,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        '\n \n Para ser atendido leve os seguintes documentos:' '\n\n\n'
                            '1. Documento de identificação com foto' '\n\n\n'
                            '2. Cartão do SUS',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 0, top: 10, right: 0,bottom: 10),
                        child: OutlinedButton.icon(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.zero, // <-- Add this
                            padding: EdgeInsets.only(left: 0, top: 0, right: 20, bottom: 0), // <-- and this
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SusScreen()),
                            );
                          },
                          icon: Image.asset('../assets/img/Cartaosus.png', fit: BoxFit.cover, width: 100,  alignment: Alignment.centerLeft,),
                          label: Text("Como obter meu cartão SUS ?",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ));
  }
}