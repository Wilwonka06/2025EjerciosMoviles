import 'dart:io';

void main(){
  print("cuantas secuencias de fibonacci desea ver?");
  int n = int.parse(stdin.readLineSync()!);

  int fibo_0 =0;
  int fibo_1 = 1;
  int resultado = 0;

  for (var i = 0; i < n; i++) {
    resultado = fibo_0 + fibo_1;
    fibo_0 = fibo_1;
    fibo_1 = resultado;
  }

  int fibonacci(int n){
    if(n <= 0) return 0;
    if(n <= 1) return 1;
     return fibonacci(n-1) + fibonacci(n-2);
  }
  int request = fibonacci(n);
  print(resultado);
  print(request);
}