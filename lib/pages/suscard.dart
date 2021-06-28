import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:projetods/pages/sus.dart';


class CartaoSus extends StatelessWidget {
  const CartaoSus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30, top: 5, right: 0,bottom: 10),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children:[
                Container(
                  margin: EdgeInsets.only(left: 0, top: 5, right: 0,bottom: 10),
                  child: Text('Cartão SUS', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                      )
                    ],
                    color: Colors.white,
                  ),
                  child: OutlinedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.only(left: 0, top: 0, right: 20, bottom: 0),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SusScreen()),
                      );
                    },

                    icon:ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset('../assets/img/Cartaosus.png', fit: BoxFit.cover, width: 85,  alignment: Alignment.centerLeft,)),
                    label: Text("Como obter meu cartão SUS ?",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),

                  ),
                ),
              ],
            ),
          ],
        )
    );
  }

}