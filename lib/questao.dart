import 'package:flutter/material.dart';


class Questao extends StatelessWidget {
final String texto;

const Questao(this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        texto,
        style: const TextStyle(fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        

      ),
    );
  }
}