import 'package:flutter/material.dart';
import 'package:telephone/screens/chiffre.dart';
class ClavierPage extends StatefulWidget {
  const ClavierPage({super.key});

  @override
  State<ClavierPage> createState() => _ClavierPageState();
}

class _ClavierPageState extends State<ClavierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clavier", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.lightBlue),
        ),
      ),

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 150),
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chiffre(chiffre: "1", subtitle: "",),
                    Chiffre(chiffre: "2", subtitle: "abc",),
                    Chiffre(chiffre: "3", subtitle: "def",)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chiffre(chiffre: "4", subtitle: "ghi",),
                    Chiffre(chiffre: "5", subtitle: "jkl",),
                    Chiffre(chiffre: "6", subtitle: "mno",)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chiffre(chiffre: "7", subtitle: "pqrs",),
                    Chiffre(chiffre: "8", subtitle: "tuv",),
                    Chiffre(chiffre: "9", subtitle: "wxyz",)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chiffre(chiffre: "*", subtitle: "",),
                    Chiffre(chiffre: "0", subtitle: "+",),
                    Chiffre(chiffre: "#", subtitle: "",)
                  ],
                ),
              ),
            ],),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.phone, color: Colors.white,),
        shape: CircleBorder(
            eccentricity: 0
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
