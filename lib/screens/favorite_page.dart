import 'package:flutter/material.dart';
class FavoritePage extends StatelessWidget {
  final List<String> favorites = [];
  FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoris (${favorites.length})", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.lightBlue, ),),
      ),
      body: ListView(
          children: favorites.map((e) => ListTile(
                leading: CircleAvatar(),
                title: Text("$e"),

          )).toList()

      ),
    );
  }
}
