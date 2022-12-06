import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JokemPoHome extends StatefulWidget {
  const JokemPoHome({super.key});

  @override
  State<JokemPoHome> createState() => _JokemPoHomeState();
}

class _JokemPoHomeState extends State<JokemPoHome> {
  var _imgApp = Image.asset('../images/padrao.png');
  var _mensagem = 'Quem Venceu o jogo';

  void _joga(String escolhaPlayer) {
    final listaOpcoes = ['pedra', 'papel', 'tesoura'];
    final escolhaApp = listaOpcoes[Random().nextInt(3)];

    // print(
    //     '$escolhaPlayer / $escolhaApp / ${_resultado(escolhaPlayer, escolhaApp)}');

    setState(() {
      _imgApp = Image.asset('../imagens/$escolhaApp.png');
      _mensagem = _resultado(escolhaPlayer, escolhaApp);
    });
  }

  String _resultado(String escolhaPlayer, String escolhaApp) {
    final String mensagem;

    if ((escolhaPlayer == 'pedra' && escolhaApp == 'tesoura') ||
        (escolhaPlayer == 'papel' && escolhaApp == 'pedra') ||
        (escolhaPlayer == 'tesoura' && escolhaApp == 'papel')) {
      mensagem = "Você ganhou!!!";
    } else if (escolhaPlayer == escolhaApp) {
      mensagem = "Empatamos!!!";
    } else {
      mensagem = "O App venceu!!!";
    }

    return mensagem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokempo'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _textLable('Escolha do App'),
            _imgApp,
            _textLable(_mensagem),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  playerChoose('pedra'),
                  const SizedBox(
                    width: 10,
                  ),
                  playerChoose('papel'),
                  const SizedBox(
                    width: 10,
                  ),
                  playerChoose('tesoura'),
                ],
              ),
            )
          ]),
    );
  }

  Widget playerChoose(String imageName) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _joga(imageName),
        child: Image.asset(
          '../images/$imageName.png',
          // height: 100,
        ),
      ),
    );
  }

  Widget _textLable(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 16),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
