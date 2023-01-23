import 'package:consumo_api_v2/repositories/aluno_repository.dart';

Future<void> main() async {
  var alunosRepository = AlunoRepository();
  var alunos = await alunosRepository.findAll();
  print(alunos[0]);
}
