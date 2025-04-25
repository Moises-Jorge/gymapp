import 'package:flutter/material.dart';
import 'package:gymapp/_comum/minhas_cores.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  // Variavel que vai definir se o usuario quer fazer login ou se quer se cadastrar
  bool queroEntrar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // Usando essas duas propriedades para o gradiente comecar em "cima e terminar em baixo" (por padrao, o LinearGradient comeca na esquerda da tela e termina na direita)
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MinhasCores.azulTopoGradiente,
                  MinhasCores.azulBaixoGradiente,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset("assets/gymLogo1.png", height: 250),
                  Text(
                    "GymApp",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfff3f4e5),
                    ),
                  ),
                  TextFormField(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
