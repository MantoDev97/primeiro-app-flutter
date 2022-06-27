import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() {
  runApp(const PerguntaApp());
}
class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
      {
        'texto' : 'Qual é a sua linguagem Favotira?',
        'respostas': [
          {'texto':'Dart', 'pontuacao': 8},
          {'texto':'Python', 'pontuacao': 7},
          {'texto':'PHP', 'pontuacao': 5},
          {'texto':'Ruby', 'pontuacao': 5},
          ],
      },
      {
        'texto' : 'Qual é o seu Framework favorito?',
        'respostas': [
          {'texto':'Django', 'pontuacao': 7}, 
          {'texto':'Laravel', 'pontuacao': 2}, 
          {'texto':'RubyOnRails', 'pontuacao': 5}, 
          {'texto':'Flutter', 'pontuacao': 10},
          ],
      },
      {
        'texto' : 'Qual é o seu instrutor favorito?',
        'respostas': [
          {'texto':'Maria', 'pontuacao': 8}, 
          {'texto':'Gustavo guanabara', 'pontuacao': 10}, 
          {'texto':'Leo', 'pontuacao': 5},
          {'texto':'Pedro', 'pontuacao': 9},
          ],
      }
    ];
  
  void _responder(int pontuacao) {
    if(temPerguntaSelecionada){
    setState(() {
     _perguntaSelecionada++;
     _pontuacaoTotal += pontuacao;
     print(_perguntaSelecionada);
    });
   }
  }
  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }



  @override
  Widget build(BuildContext context) {
    
   

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          shadowColor: Colors.purpleAccent,
          centerTitle: true,
          title: const Text(
            'Perguntas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0
            ),
            ),
          
        
        ),
        body: temPerguntaSelecionada 
        ? Questionario(
          perguntas: _perguntas,
          perguntaSelecionada: _perguntaSelecionada,
          responder: _responder,
          )
        : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}
