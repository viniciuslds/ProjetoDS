import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetods/components/body.dart';
import 'package:projetods/components/bottom_nav_bar.dart';

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
        appBar: buildAppBar(),
        body: Body(),
        bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
        ),
      ],
      backgroundColor: Colors.green,
    );
  }

}