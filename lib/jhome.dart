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
    );
  }
}
