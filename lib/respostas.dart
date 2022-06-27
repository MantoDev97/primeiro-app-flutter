import 'package:flutter/material.dart';


class Resposta extends StatelessWidget {
final String texto;
final void Function() quandoSelecionado;

 const Resposta(this.texto, this.quandoSelecionado, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 200.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple, shadowColor: Colors.purpleAccent
        ),
        onPressed: quandoSelecionado,
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      )
    );
  }
}