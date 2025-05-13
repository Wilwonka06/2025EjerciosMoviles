import 'dart:io';
void main() {
  print('Ingresa el número para realizar el factorial:');
  int fact = int.parse(stdin.readLineSync()!);

  // Método recursivo
  int factorialRecursivo(int n) {
    if (n <= 1) {
      return 1;
    }
    return n * factorialRecursivo(n - 1);
  }

  // Método iterativo
  int factorialIterativo(int n) {
    int resultado = 1;
    for (int i = 1; i <= n; i++) {
      resultado *= i;
    }
    return resultado;
  }

  int calculoRecursivo = factorialRecursivo(fact);
  int calculoIterativo = factorialIterativo(fact);
  
  print('El factorial de $fact es:');
  print('Usando recursividad: $calculoRecursivo');
  print('Usando iteración: $calculoIterativo');
}