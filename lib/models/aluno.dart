import 'dart:convert';

import 'package:consumo_api_v2/models/curso.dart';
import 'package:consumo_api_v2/models/endereco.dart';

class Aluno {
  int id;
  String nome;
  int? idade;
  List<String> nomeCursos;
  List<Curso> cursos;
  Endereco endereco;

  Aluno({
    required this.id,
    required this.nome,
    this.idade,
    required this.nomeCursos,
    required this.cursos,
    required this.endereco,
  });

  //toMap
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "idade": idade ?? 0,
      "nomeCursos": nomeCursos,
      "cursos": cursos.map((curso) => curso.toMap()).toList(),
      "endereco": endereco.toMap(),
    };
  }

  //toJson
  String toJson() => jsonEncode(toMap());

  //fromMap
  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map["id"] ?? 0,
      nome: map["nome"] ?? "",
      nomeCursos: List<String>.from(map["nomeCursos"] ?? <String>[]),
      cursos: map["cursos"]?.map<Curso>((curso) => Curso.fromMap(curso)).toList() ?? <Curso>[],
      endereco: Endereco.fromMap(map["endereco"] ?? <String, dynamic>{}),
    );
  }

  //fromJson
  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));

  @override
  String toString() {
    return '''id: $id, nome: $nome, 
                nomeCursos: $nomeCursos, 
                cursos: $cursos, 
                endereco: $endereco''';
  }
}
