import 'package:flutter/material.dart';
import 'package:jokenpo2022/jhome.dart';

void main() {
  final ThemeData myTheme = ThemeData();

  runApp(MaterialApp(
    theme: ThemeData().copyWith(
        colorScheme: myTheme.colorScheme.copyWith(
      primary: Colors.amber,
    )),
    home: JokemPoHome(),
    debugShowCheckedModeBanner: false,
  ));
}
