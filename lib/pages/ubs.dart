import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:projetods/components/bottom_nav_bar.dart';
import 'package:projetods/pages/ubsdetail.dart';

class UbsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 0, right: 0,bottom: 0),
                child: Text("Unidades Básicas de Saúde"),
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
      bottomNavigationBar: BottomNavBar(),
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot){
            var showData= json.decode(snapshot.data.toString());
            return ListView.builder
              (
                itemCount: 9,
                itemBuilder: (BuildContext ctxt, int index) {
                  if(showData != null){
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                           // imagem da ubs
                            title: Text(showData[index]['name']), //titulo da UBS
                            subtitle: Text( showData[index]['description'], style: TextStyle(color: Colors.black.withOpacity(0.6)), // Endereço da UBS
                            ),
                          ),
                          //COLOCAR A IMAGEM DA UBS AQUI
                          Image.asset(showData[index]['image'] ,fit: BoxFit.fitWidth),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Endereço: '+showData[index]['endereco'],style: TextStyle(color: Colors.black.withOpacity(0.6)), textAlign: TextAlign.left,),
                                Text('Tipo de Serviço: '+showData[index]['tiposervico'],style: TextStyle(color: Colors.black.withOpacity(0.6)), textAlign: TextAlign.left,), //INFORMAÇÕES DA UBS
                              ],
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                        id: showData[index]['id'],
                                        image: showData[index]['image'],
                                        name: showData[index]['name'],
                                        description: showData[index]['description'],
                                        endereco: showData[index]['endereco'],
                                        tiposervico: showData[index]['tiposervico'],
                                      ),
                                    ),
                                  );
                                },
                                child: const Text('Detalhes'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }else{
                    return Text('Erro ao carregar dados');
                  }},
            );
          },future: DefaultAssetBundle.of(context).loadString("../assets/dados/ubs.json"),
        ),
      ),
    );
  }
}