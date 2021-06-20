import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SusStateInfo();
  }
}
class _SusStateInfo extends State<SusScreen> {
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
                    child: Text("Cartão SUS"),
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
            margin: EdgeInsets.only(left: 20, top: 20, right: 20,bottom: 0),
            child: Column(
              children: [
                Image.asset('../assets/img/avatar.png', width: 350, alignment: Alignment.center,),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      '\n \n Vá até uma Unidade Básica de Saúde, levando o RG e CPF. ''\n'
                          'É impresso na hora, mas caso isso não aconteça,''\n'
                          'você receberá poucos dias depois.' '\n\n\n'
                          'Também é possível fazer o cartão SUS ' '\n'
                          'pelo app Conecte SUS!' '\n\n\n',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {

                  },
                  child: const  Text(
                    'Clique aqui e baixe o app Conecte.''\n'
                        'SUS e tenha acesso ao cartão e,''\n'
                        'vários outros serviços!''\n',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}