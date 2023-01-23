import 'dart:convert';

class Cidade {
  int id;
  String nome;

  Cidade({required this.id, required this.nome});

  //toMap
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
    };
  }

  //toJson
  String toJson() => jsonEncode(toMap());

  //fromMap
  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: map["id"] ?? 0,
      nome: map["nome"] ?? "",
    );
  }

  //fromJson
  factory Cidade.fromJson(String json) => Cidade.fromMap(jsonDecode(json));
}
