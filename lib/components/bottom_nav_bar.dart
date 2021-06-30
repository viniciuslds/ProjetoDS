import 'package:flutter/material.dart';
import 'package:projetods/pages/docs.dart';
import 'package:projetods/pages/home.dart';
import 'package:projetods/pages/sus.dart';
import 'package:projetods/pages/ubs.dart';
import '../constants/constants.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavBar();
  }
}

class _BottomNavBar extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.home),
                      color: Colors.white,
                      tooltip: 'Inicio',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                    ),
                    Text('Início',style: TextStyle(color: Colors.white)),
                  ],
              ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                PopupMenuButton(
                  onSelected: (value) { // add this property
                    if (value == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UbsPage()),
                      );
                    }
                    if (value == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SusScreen()),
                      );
                    }
                    if (value == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DocsScreen()),
                      );
                    }
                  },
                  icon: Icon(Icons.menu,color: Colors.white),
                  color: Colors.white,
                  tooltip: 'Serviços',
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    const PopupMenuItem(
                      value: 0,
                      child: ListTile(
                        leading: Icon(Icons.local_hospital),
                        title: Text('UBS'),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: ListTile(
                        leading: Icon(Icons.credit_card_outlined),
                        title: Text('Cartão SUS'),

                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: ListTile(
                        leading: Icon(Icons.article),
                        title: Text('Documentos SUS'),
                      ),
                    ),
                  ],
                ),
                Text('Serviços',style: TextStyle( color: Colors.white)),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.badge),
                  color: Colors.white,
                  tooltip: 'Perfil',
                  onPressed: () {},
                ),
                Text('Perfil',style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
