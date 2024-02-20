void main() {
  List<int> numeros = [5, 20, 2, 10, 1, 7, 1, 6, 4, 9];

  numeros.sort();

  int menorNumero = numeros[0];
  int maiorNumero = numeros[numeros.length - 1];

  int quantidadeMenorNumero = numeros.where((num) => num == menorNumero).length;
  int quantidadeMaiorNumero = numeros.where((num) => num == maiorNumero).length;

  print('Menor número: $menorNumero');
  print(
      'Quantidade de vezes que o menor número aparece: $quantidadeMenorNumero');
  print('Maior número: $maiorNumero');
  print(
      'Quantidade de vezes que o maior número aparece: $quantidadeMaiorNumero');
}
