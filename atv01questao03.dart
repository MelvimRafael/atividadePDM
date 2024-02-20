class Produto {
  int codigo;
  String descricao;
  double preco;

  Produto(this.codigo, this.descricao, this.preco);
}

void main() {
  List<Produto> produtos = [
    Produto(101, "Violão", 500.0),
    Produto(202, "Guitarra", 1000.0),
    Produto(303, "Bateria", 2000.0),
    Produto(404, "Teclado", 800.0),
    Produto(505, "Baixo", 600.0),
    Produto(606, "Saxofone", 1200.0),
    Produto(707, "Violino", 400.0),
    Produto(808, "Pandeiro", 100.0),
    Produto(909, "Flauta", 300.0),
    Produto(1010, "Trompete", 700.0),
    Produto(1111, "Acordeão", 1500.0),
    Produto(1212, "Gaita de Boca", 50.0),
  ];

  produtos.sort((a, b) => a.codigo.compareTo(b.codigo));

  print('Produtos ordenados por código:');
  for (var produto in produtos) {
    print(
        'Código: ${produto.codigo}, Descrição: ${produto.descricao}, Preço: ${produto.preco}');
  }

  print('\nBusca Sequencial');
  int codigoBuscaSequencial = 909;

  int comparacoesSequencial = 0;
  bool encontradoSequencial = false;

  for (var produto in produtos) {
    comparacoesSequencial++;
    if (produto.codigo == codigoBuscaSequencial) {
      encontradoSequencial = true;
      break;
    }
  }

  if (encontradoSequencial) {
    print('Produto encontrado! Número de comparações: $comparacoesSequencial');
  } else {
    print(
        'Produto não encontrado! Número de comparações: $comparacoesSequencial');
  }

  print('\nBusca Binária');
  int codigoBuscaBinaria = 808;

  int comparacoesBinaria = 0;
  bool encontradoBinaria = false;

  int inicio = 0;
  int fim = produtos.length - 1;

  while (inicio <= fim) {
    comparacoesBinaria++;
    int meio = ((inicio + fim) / 2).floor();
    if (produtos[meio].codigo == codigoBuscaBinaria) {
      encontradoBinaria = true;
      break;
    } else if (produtos[meio].codigo < codigoBuscaBinaria) {
      inicio = meio + 1;
    } else {
      fim = meio - 1;
    }
  }

  if (encontradoBinaria) {
    print('Produto encontrado! Número de comparações: $comparacoesBinaria');
  } else {
    print('Produto não encontrado! Número de comparações: $comparacoesBinaria');
  }
}