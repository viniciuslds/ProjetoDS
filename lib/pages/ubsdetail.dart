import 'package:flutter/material.dart';
import 'package:projetods/components/bottom_nav_bar.dart';

class DetailPage extends StatelessWidget{
  DetailPage({required this.id, required this.image,required this.name,required this.description, required this.endereco,required this.tiposervico}); /* Esse é o creator que vai receber os dados */
  final int id;
  final String image;
  final String name;
  final String description;
  final String endereco;
  final String tiposervico;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 0, right: 0,bottom: 0),
                child: Text("Unidade Básica de Saúde"),
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
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.asset(image,fit: BoxFit.fitWidth),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Text(
                          "DETALHES",
                          style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
                        ),

                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Nome : ", style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black)),
                        Flexible(
                          child: Text(name, style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.teal)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Descrição : ", style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black)),
                        Flexible(
                          child: Text(description, style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.teal)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Endereço : ", style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        Flexible(
                          child: Text(endereco, style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.teal),),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Tipo de Serviço: ", style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        Flexible(
                          child: Text(tiposervico, style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.teal),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}