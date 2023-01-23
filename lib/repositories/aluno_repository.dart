import 'dart:convert';

import 'package:consumo_api_v2/models/aluno.dart';
import 'package:http/http.dart' as http;

class AlunoRepository {
  Future<List<Aluno>> findAll() async {
    var response = await http.get(Uri.parse("http://localhost:8080/"));
    var alunosList = jsonDecode(response.body);

    return alunosList.map<Aluno>((alunoMap) => Aluno.fromMap(alunoMap)).toList();
  }

  Future<Aluno> findById(int id) async {
    var response = await http.get(Uri.parse("http://localhost:8080/$id"));

    return Aluno.fromJson(response.body);
  }
}
