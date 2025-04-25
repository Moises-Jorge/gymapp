// 1 - Importar o material.dart
import 'package:flutter/material.dart';
import 'package:gymapp/_comum/minhas_cores.dart';
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
  ];

  @override
  Widget build(BuildContext context) {
    // Quando queremos criar "TELAS", o ideal eh que se use o widget "Scaffold": widget que facilita a criacao de telas no flutter
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              exercicioModelo.nome,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Text(exercicioModelo.treino, style: TextStyle(fontSize: 15)),
          ],
        ),
        centerTitle: true,
        backgroundColor: MinhasCores.azulEscuro,
        elevation: 0, // Propriedade que elimina a sombra
        toolbarHeight: 72,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(32),
          ), // Usando a propriedade "shappe" para circular apenas a parte de baixo da "AppBar"
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FAB FOI CLICADO!');
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        margin: EdgeInsets.all(14),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xfff3f4e5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Enviar foto"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Tirar foto"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            const Text(
              "Como fazer?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(exercicioModelo.comoFazer),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text(
              "Como estou me sentindo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
                SentimentoModelo sentimentoAgora = listaSentimentos[index];
                return ListTile(
                  // "ListTile" propriedade muito usada quando se esta a trabalhar com listas
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  title: Text(sentimentoAgora.sentindo),
                  subtitle: Text(sentimentoAgora.data),
                  leading: Icon(
                    Icons.double_arrow_rounded,
                  ), // "leading"Serve para colocar alguma coisa (um icone, por exemplo) antes de um elemento do "ListTile"
                  trailing: IconButton(
                    // "trailing" Serve para colocar alguma coisa (um icone, por exemplo) depis de um elemento do "ListTile"
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      print("DELETAR ${sentimentoAgora.sentindo}");
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
