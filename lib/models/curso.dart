import 'dart:convert';

class Curso {
  int id;
  String nome;
  bool isAluno;

  Curso({required this.id, required this.nome, required this.isAluno});

  //toMap
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "isAluno": isAluno,
    };
  }

  //toJson
  String toJson() => jsonEncode(toMap());

  //fromMap
  factory Curso.fromMap(Map<String, dynamic> map) {
    return Curso(
      id: map["id"],
      nome: map["nome"],
      isAluno: map["isAluno"],
    );
  }

  //fromJson
  factory Curso.fromJson(String json) => Curso.fromMap(jsonDecode(json));
}
