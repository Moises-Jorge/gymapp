class SentimentoModelo {
  String id;
  String sentindo;
  String data;

  // Construtor padrao
  SentimentoModelo({
    required this.id,
    required this.sentindo,
    required this.data,
  });

  // Construtor nomeado para estabelecer comunicacao com a BD...
  SentimentoModelo.fromMap(Map<String, dynamic> map)
    : id = map["id"],
      sentindo = map["sentindo"],
      data = map["data"];

  // Metodo para fazer o processo inverso: mandar dados na BD...
  Map<String, dynamic> toMap() {
    return {"id": id, "sentindo": sentindo, "data": data};
  }
}
