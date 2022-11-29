import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JokemPoHome extends StatefulWidget {
  const JokemPoHome({super.key});

  @override
  State<JokemPoHome> createState() => _JokemPoHomeState();
}

class _JokemPoHomeState extends State<JokemPoHome> {
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
            Image.asset('images/'),
            _textLable('Quem venceu o jogo'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'images/pedra.png',
                  height: 100,
                ),
                Image.asset(
                  'images/tesoura.png',
                  height: 100,
                ),
                Image.asset(
                  'images/papel.png',
                  height: 100,
                ),
              ],
            )
          ]),
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
