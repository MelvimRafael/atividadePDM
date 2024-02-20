void main() {
  List<int> numeros = [5, 8, 2, 10, 3, 7, 1, 6, 4, 9, 15, 12, 11, 13, 14];

  numeros.sort();

  print('Números ordenados:');
  print(numeros);

  print('\nBusca Sequencial');
  int numeroBuscaSequencial = 10;

  int posicaoSequencial = -1;

  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] == numeroBuscaSequencial) {
      posicaoSequencial = i;
      break;
    }
  }

  if (posicaoSequencial != -1) {
    print('Número encontrado!');

    if (posicaoSequencial % 2 == 0) {
      print('Está em uma posição par do vetor.');
    } else {
      print('Está em uma posição ímpar do vetor.');
    }
  } else {
    print('Número não encontrado!');
  }

  print('\nBusca Binária');
  int numeroBuscaBinaria = 7;

  int posicaoBinaria = -1;
  int inicio = 0;
  int fim = numeros.length - 1;

  while (inicio <= fim) {
    int meio = ((inicio + fim) / 2).floor();

    if (numeros[meio] == numeroBuscaBinaria) {
      posicaoBinaria = meio;
      break;
    } else if (numeros[meio] < numeroBuscaBinaria) {
      inicio = meio + 1;
    } else {
      fim = meio - 1;
    }
  }

  if (posicaoBinaria != -1) {
    print('Número encontrado!');

    if (posicaoBinaria % 2 == 0) {
      print('Está em uma posição par do vetor.');
    } else {
      print('Está em uma posição ímpar do vetor.');
    }
  } else {
    print('Número não encontrado!');
  }
}