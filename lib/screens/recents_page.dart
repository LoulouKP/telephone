import 'package:flutter/material.dart';
class RecentsPage extends StatefulWidget {
  const RecentsPage({super.key});

  @override
  State<RecentsPage> createState() => _RecentsPageState();
}

class _RecentsPageState extends State<RecentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Récents",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
      ),

    );
  }
}
