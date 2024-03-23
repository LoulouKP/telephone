import 'package:flutter/material.dart';
import 'package:telephone/models/newcontact_model.dart';
class Formulaire extends StatelessWidget {
  Formulaire({super.key});
  var nomcontroller = TextEditingController();
  var prenomcontroller = TextEditingController();
  var entreprise = TextEditingController();
  List <String> newcontact = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulaire"),
      ),
      body: ListView(
        children: [
          TextField(
            controller: prenomcontroller,
            decoration: InputDecoration(
              labelText: "Prénom",
            ),
          ),
          TextField(
            controller: nomcontroller,
            decoration: InputDecoration(
              labelText: "Nom",
            ),
          ),
          TextField(
            controller: entreprise,
            decoration: InputDecoration(
              labelText: "Entreprise",
            ),
          ),
          TextButton(onPressed: (){
            NewContactMoel newcontacmodel = NewContactMoel(nom: nomcontroller.text, prenom: prenomcontroller.text, entreprise: entreprise.text);
            Navigator.pop(context, newcontacmodel);
          }, child: Text("Sauvegarder"))
        ],
      ),
    );
  }
}
