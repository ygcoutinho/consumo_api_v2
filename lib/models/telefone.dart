class Telefone {
  int ddd;
  String telefone;

  Telefone({required this.ddd, required this.telefone});

  //### Serialização

  //## toMap Passo 1
  //método que pega o objeto (telefone) e transforma em um Map<String,dynamic>

  //## toJson Passo 2
  //método que pega um Map<String,dynamic> e transforma em um JSON pelo pacote dart:convert (jsonEncode)

  //### "Deserialização"

  //## factory .fromJson Passo 1
  //Método que recebe uma String json, que é convertida para um Map<String,dynamic> e transforma em um objeto (telefone)

  //## factory .fromMap Passo 2
  //método que recebe um Map<String,dynamic> e trasforma em um objeto (telefone)

}
