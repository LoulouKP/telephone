import 'package:flutter/material.dart';
import 'package:telephone/models/newcontact_model.dart';
import 'package:telephone/screens/formulaire.dart';
class ContactPage extends StatefulWidget {
  ContactPage({super.key});
  List<NewContactMoel> contactListe = [];
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
      ),
      
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
       onPressed: () async{
         var Contact = await Navigator.push(context,
          MaterialPageRoute(builder: (context) => Formulaire()));
         print(Contact);
      }),
    );
  }
}
