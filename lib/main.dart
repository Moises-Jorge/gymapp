import 'package:flutter/material.dart';
import 'package:gymapp/telas/autenticacao_tela.dart';
import 'package:gymapp/telas/exercicio_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AutenticacaoTela());
  }
}
