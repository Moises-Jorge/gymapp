class ExercicioModelo {
  String id;
  String nome;
  String treino;
  String comoFazer;

  String? urlImagem;

  // Construtor padrao: para inicializar os atributos
  ExercicioModelo({
    required this.id,
    required this.nome,
    required this.treino,
    required this.comoFazer,
  });

  // Construtor Nomeado para estabelecer comunicacao com a BD ou outras aplicacoes (API's, etc). Converter de JSON para MAP e de MAP para o formato da nossa MODEL
  ExercicioModelo.fromMap(Map<String, dynamic> map)
    : id = map["id"],
      nome = map["nome"],
      treino = map["treino"],
      comoFazer = map["comoFazer"],
      urlImagem = map["urlImagem"];

  // Aqui, criamos uma funcao que farah o processo inverso: Converter a nossa MODEL em MAP e posteriormente, darah para converter a MAP em JSON e mandar para a BD ou outras aplicacoes.
  // tipoRetorno(Map)  NomeFuncao(toMap)
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "treino": treino,
      "comoFazer": comoFazer,
      "urlImagem": urlImagem,
    };
  }
}
