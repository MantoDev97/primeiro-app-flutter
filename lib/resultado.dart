

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
final int pontuacao;
final void Function() quandoReiniciarQuestionario;


const Resultado(this.pontuacao,this.quandoReiniciarQuestionario, {Key? key}) 
: super(key: key);

dynamic get fraseResultado {
  if(pontuacao < 10){
    return 'Parabéns!';
  } else if(pontuacao <15) {
    return 'Você é bom!';
  }else if(pontuacao < 50){
    return 'Nivel jedi!';
  }
}

 @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 40,
              color: Colors.deepPurple, fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 200.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple, shadowColor: Colors.purpleAccent
        ),
          onPressed: quandoReiniciarQuestionario,
          child: const Text(
            'Jogar novamente?',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
        ),
      ],
    );
  }
}
