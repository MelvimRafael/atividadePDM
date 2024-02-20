class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);
}

void main() {
  List<Funcionario> funcionarios = [
    Funcionario('João', 2500.0),
    Funcionario('Maria', 3500.0),
    Funcionario('Rafael', 2000.0),
    Funcionario('Ana', 4000.0),
    Funcionario('Melvim', 3000.0),
  ];

  funcionarios.sort((a, b) => a.salario.compareTo(b.salario));

  print('Funcionários em ordem crescente de salário:');
  for (var funcionario in funcionarios) {
    print('Nome: ${funcionario.nome}, Salário: ${funcionario.salario}');
  }

  funcionarios.sort((a, b) => b.salario.compareTo(a.salario));

  print('\nFuncionários em ordem decrescente de salário:');
  for (var funcionario in funcionarios) {
    print('Nome: ${funcionario.nome}, Salário: ${funcionario.salario}');
  }

  funcionarios.sort((a, b) => a.nome.compareTo(b.nome));

  print('\nFuncionários em ordem alfabética:');
  for (var funcionario in funcionarios) {
    print('Nome: ${funcionario.nome}, Salário: ${funcionario.salario}');
  }
}
