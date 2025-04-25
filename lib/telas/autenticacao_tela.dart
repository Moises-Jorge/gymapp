import 'package:flutter/material.dart';
import 'package:gymapp/_comum/minhas_cores.dart';

class AutenticacaoTela extends StatelessWidget {
  const AutenticacaoTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  MinhasCores.azulTopoGradiente,
                  MinhasCores.azulBaixoGradiente,
                ],
              ),
            ),
          ),
          Column(
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
            ],
          ),
        ],
      ),
    );
  }
}
