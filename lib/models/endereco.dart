import 'dart:convert';
import 'package:consumo_api_v2/models/cidade.dart';
import 'package:consumo_api_v2/models/telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone,
  });

  //toMap
  Map<String, dynamic> toMap() {
    return {
      "rua": rua,
      "numero": numero,
      "cep": cep,
      "cidade": cidade.toMap(),
      "telefone": telefone.toMap(),
    };
  }

  //toJson
  String toJson() => jsonEncode(toMap());

  //fromMap
  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map["rua"] ?? '',
      numero: map["numero"] ?? 0,
      cep: map["cep"] ?? '',
      cidade: Cidade.fromMap(map["cidade"] ?? {}),
      telefone: Telefone.fromMap(map["telefone"] ?? {}),
    );
  }

  //fromJson
  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));
}
