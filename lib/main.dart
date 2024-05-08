import 'package:flutter/material.dart';
import 'menu.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

//HOME PAGE
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => home();
}

//MENU PAGE
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    //Menu App Bar
    appBar: AppBar(
      title: const Text(
        'Menu',
        style: TextStyle(
          fontFamily: 'Inter-Bold',
        ),
      ),
      toolbarHeight: 70,
      //elevation: 20,
      backgroundColor: Color(0xFFEEEFF5),
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
          ));
        },
        icon: Icon(Icons.menu_rounded),
      ),
    ),

    //Menu Body
    body: ListView(
      children: [
        Year(),
        Stickers(),
        Darkmode(),
        Archives(),
        MyAccount(),
      ],
    )
  );
}