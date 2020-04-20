import 'package:flutter/material.dart';
import 'dart:math';
import 'Resultado.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _showResult() {

    var itens = ["cara", "coroa"];
    var number = Random().nextInt(itens.length);
    var result = itens[number];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(result)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _showResult,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
