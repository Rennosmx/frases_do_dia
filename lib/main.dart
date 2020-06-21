import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Eu prefiro ser essa metamorfose ambulante",
    "Do que ter aquela velha opinião formada sobre tudo",
    "É chato chegar a um objetivo num instante",
    "Eu quero viver nessa metamorfose ambulante",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Frases do Dia"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
                _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: _gerarFrase
            )
          ],
        ),
      )
    );
  }
}
