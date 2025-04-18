// 1 - Importar o material.dart
import 'package:flutter/material.dart';
import 'package:gymapp/modelos/exercicio_modelo.dart';
import 'package:gymapp/modelos/sentimento_modelo.dart';

// 2 - Se tiver duvidas se deve criar um Stateless ou Statefull, cria primeiro como Stateless e depois converte em Statefull se for necessario
class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});

  // Instanciando as models que acabei de criar
  // Instancinado o Exercicio
  final ExercicioModelo exercicioModelo = ExercicioModelo(
    id: "EX001",
    nome: "Remada Baixa Supinada",
    treino: "Treino A",
    comoFazer: "Segura a barra e puxa",
  );

  // Instanciando os Sentimentos(serah uma lista de sentimentos)
  final List<SentimentoModelo> listaSentimentos = [
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativacao hoje",
      data: "2025-04-18",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Ja senti alguma ativacao",
      data: "2025-04-19",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Quando queremos criar "TELAS", o ideal eh que se use o widget "Scaffold": widget que facilita a criacao de telas no flutter
    return Scaffold(
      appBar: AppBar(
        title: Text("${exercicioModelo.nome} - ${exercicioModelo.treino}"),
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
        child: ListView(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Enviar foto")),
            const Text(
              "Como fazer?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(exercicioModelo.comoFazer),
            Divider(),
            const Text(
              "Como estou me sentindo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
                SentimentoModelo sentimentoAgora = listaSentimentos[index];
                return Text(sentimentoAgora.sentindo);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
