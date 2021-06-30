import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:projetods/pages/docs.dart';

class AcessoRapido extends StatelessWidget {
  const AcessoRapido({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, top: 5, right: 0,bottom: 10),
              child: Text('Acesso rápido', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black26,
                        offset: new Offset(10,10),
                        blurRadius: 25.0,
                      )
                    ],
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(left: 30, top: 5, right: 10,bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SusScreen()),
                              // );
                            },
                            child:Column(
                              children: [
                                Container(
                                  height: 100,
                                  margin: EdgeInsets.all(8.0),
                                  child: Image.asset('../assets/img/heart.png'),
                                ),
                                Text('Serviços SUS'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black26,
                        offset: new Offset(10,10),
                        blurRadius: 25.0,
                      )
                    ],
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(left: 30, top: 5, right: 10,bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DocsScreen()),
                              );
                            },
                            child:Column(
                              children: [
                              Container(

                              height: 100,
                              margin: EdgeInsets.all(8.0),
                                child: Image.asset('../assets/img/avatar.png'),
                              ),
                                Text('Documentação'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black26,
                        offset: new Offset(10,10),
                        blurRadius: 25.0,
                      )
                    ],
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(left: 30, top: 5, right: 10,bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child:Column(
                              children: [
                                Container(
                                  height: 100,
                                  margin: EdgeInsets.all(8.0),
                                  child: Image.asset('../assets/img/sus.png'),
                                ),
                                Text('Informações sobre o SUS'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black26,
                        offset: new Offset(10,10),
                        blurRadius: 25.0,
                      )
                    ],
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(left: 30, top: 5, right: 10,bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => UbsPage()),
                              // );
                            },
                            child:Column(
                              children: [
                                Container(
                                  height: 100,
                                  margin: EdgeInsets.all(8.0),
                                  child: Image.asset('../assets/img/news.png'),
                                ),
                                Text('Notícias'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}

