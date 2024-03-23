import 'package:flutter/material.dart';
import 'package:telephone/screens/clavier_page.dart';
import 'package:telephone/screens/contact_page.dart';
import 'package:telephone/screens/favorite_page.dart';
import 'package:telephone/screens/recents_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _element = 0;
  final List<Widget> _screen = [
    FavoritePage(),
    RecentsPage(),
    ContactPage(),
    ClavierPage(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: IndexedStack(
        index: _element,
        children: _screen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _element,
        onTap: (int index) {
          setState(() {
            _element = index;
          });

        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoris"),
          BottomNavigationBarItem(icon: Icon(Icons.timelapse_outlined), label: "Récents"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts_rounded), label:"Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.keyboard_alt_outlined), label:"Clavier"),

        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),

    );
  }
}
