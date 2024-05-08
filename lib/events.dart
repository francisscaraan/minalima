import 'package:flutter/material.dart';
import 'main.dart';


class eventsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text(
        'Events',
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
        icon: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      actions: [
        Container(
          padding: EdgeInsets.only(right: 20),
          child: Wrap(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit, color: Colors.black, size: 20,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, color: Colors.black,),
              ),
            ],
          ),
        )
      ],
    ),
  );
}