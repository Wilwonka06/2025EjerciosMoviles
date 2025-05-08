import 'dart:io';

void main(){
  /* Escribe un programa en dart que calcule cunto debe pagar cada persona despues de dividir la cuenta
  Pasos a seguir:
  1. pedir usuario el total de la cuenta
  2. pedir procentaje de propina
  3. calcular el total a pagar sumando la propina
  4. pedir el número de personas para dividir la cuenta
  5. calcular cuanto debe pagar cada persona
  */ 
  print(''' --------------------------------------
  Bienvenido a la calculadora de propinas
  --------------------------------------''');
  bool bandera = true;
 

  while (bandera) {
     double valorT_Inicial = 0, porcentaje = 0;
      var cantidadP;
    try {
      print('Ingresa el total de la cuenta: ');
      valorT_Inicial = double.parse(stdin.readLineSync()!);

    } catch (e) {
      print('ingresa un valor correspondiente');
    }
    
    print('Ingresa el porcentaje de la propina: ');
    porcentaje = double.parse(stdin.readLineSync()!);

    print('Ingresa el número de personas:');
    cantidadP = int.parse(stdin.readLineSync()!);

    double ValorP(double a, double b, int c ){
      double propina = (a*b)/100;
      double ValorT_Final = a+ propina;
      double TotalxPerosna = ValorT_Final /c;
      return TotalxPerosna;
    }

    var calculo = ValorP(valorT_Inicial, porcentaje, cantidadP);
    print('Cada persosna del grupo debe de pagar: $calculo');
  }
}