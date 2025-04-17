// 1 - Importar o material.dart
import 'package:flutter/material.dart';

// 2 - Se tiver duvidas se deve criar um Stateless ou Statefull, cria primeiro como Stateless e depois converte em Statefull se for necessario
class ExercicioTela extends StatelessWidget {
  const ExercicioTela({super.key});

  @override
  Widget build(BuildContext context) {
    // Quando queremos criar "TELAS", o ideal eh que se use o widget "Scaffold": widget que facilita a criacao de telas no flutter
    return Scaffold(
      appBar: AppBar(
        title: const Text("Puxada Alta Pronada - Treino A"),
        backgroundColor: Colors.blue[700],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FAB FOI CLICADO!');
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Enviar foto")),
            const Text(
              "Como fazer?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "Segura com as duas maos na barra, mantem a coluna reta, e puxe",
            ),
            Divider(),
            const Text(
              "Como estou me sentindo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text("Senti bastante ativacao hoje!"),
          ],
        ),
      ),
    );
  }
}
