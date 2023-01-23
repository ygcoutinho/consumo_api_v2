import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({required this.ddd, required this.telefone});

  //### Serialização

  //## toMap Passo 1
  //método que pega o objeto (telefone) e transforma em um Map<String,dynamic>
  Map<String, dynamic> toMap() {
    return {
      "ddd": ddd,
      "telefone": telefone,
    };
  }

  //## toJson Passo 2
  //método que pega um Map<String,dynamic> e transforma em um JSON pelo pacote dart:convert (jsonEncode)
  String toJson() => jsonEncode(toMap());

  //### "Deserialização"

  //## factory .fromMap Passo 1
  //método que recebe um Map<String,dynamic> e trasforma em um objeto (telefone)
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map["ddd"] ?? 0,
      telefone: map["telefone"] ?? "",
    );
  }

  //## factory .fromJson Passo 2
  //Método que recebe uma String json, que é convertida para um Map<String,dynamic> e transforma em um objeto (telefone)
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));
}
