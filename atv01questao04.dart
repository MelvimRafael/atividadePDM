class Aluno {
  String nome;
  double nota1;
  double nota2;

  Aluno(this.nome, this.nota1, this.nota2);

  double calcularMediaPonderada() {
    return (nota1 * 2 + nota2 * 3) / 5;
  }
}

void main() {
  List<Aluno> alunos = [
    Aluno('João', 7.5, 8.0),
    Aluno('Maria', 6.0, 9.0),
    Aluno('Melvim', 5.5, 7.0),
    Aluno('Ana', 8.0, 7.5),
    Aluno('Rafael ', 6.5, 6.0),
    Aluno('Laura', 9.0, 9.5),
    Aluno('Miguel', 7.0, 6.5),
    Aluno('Sophia', 8.5, 8.5),
  ];

  alunos.sort((a, b) => b.calcularMediaPonderada().compareTo(a.calcularMediaPonderada()));

  print('Alunos ordenados pela média ponderada:');
  for (var aluno in alunos) {
    print('Nome: ${aluno.nome}, Média Ponderada: ${aluno.calcularMediaPonderada()}');
  }

  alunos.sort((a, b) => a.nota1.compareTo(b.nota1));

  print('\nAlunos ordenados pela nota 1:');
  for (var aluno in alunos) {
    print('Nome: ${aluno.nome}, Nota 1: ${aluno.nota1}');
  }

  List<Aluno> alunosReprovados = alunos.where((aluno) => aluno.calcularMediaPonderada() < 7).toList();
  alunosReprovados.sort((a, b) => a.nome.compareTo(b.nome));

  print('\nAlunos reprovados em ordem alfabética:');
  for (var aluno in alunosReprovados) {
    print('Nome: ${aluno.nome}, Média Ponderada: ${aluno.calcularMediaPonderada()}');
  }
}