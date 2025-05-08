import 'dart:math';
import 'dart:io';

void main() {

  /*double a, b, c;
    print('Ingrese la primera nota:');
    a = double.parse(stdin.readLineSync()!);

    print('Ingrese la segunda nota:');
    b = double.parse(stdin.readLineSync()!);

    print('Ingrese la tercera nota:');
    c = double.parse(stdin.readLineSync()!);

    double notas(var a, var b, var c){
      return (a+b+c)/3;
    }

    double promedio = notas(a, b, c);

    print('El proemdio del periodo es: ${promedio.toStringAsFixed(2)}');
    */

  /*int Pg, Pp, Pe;

  print('Ingresa los partidos ganados: ');
  Pg = int.parse(stdin.readLineSync()!);

  print('Ingresa los partidos perdidos: ');
  Pp = int.parse(stdin.readLineSync()!);

  print('Ingresa los partidos empatados: ');
  Pe = int.parse(stdin.readLineSync()!);

  int C_Puntos(int Pg, int Pp, int Pe){
    return (Pg *3)+ Pp;
  }

  int puntos = C_Puntos(Pg, Pp,Pe);
  
  print('La cantidad de puntos del equipo es de: $puntos');
  */

  /*print('Escribe el nombre del empleado: ');
  String nombre = stdin.readLineSync()!;

  double valorH = 6181;

  List<String> nombresMeses = [
    'enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio',
    'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre'
  ];

  String mesActual = nombresMeses[DateTime.now().month - 1];

  print('Ingresa las horas laboradas en el mes ($mesActual): ');
  double HorasL = double.parse(stdin.readLineSync()!);

  double TotalD(double a, double b){
    return a * b;
  }
  var calculo = TotalD(valorH, HorasL);

  print('El salario bruto del empleado $nombre por la cantidad de horas($HorasL)  es de: $calculo');
  */

  /*print('Hallar hipotenusa \nIngresa el valor del lado A:');
  double ladoA = double.parse(stdin.readLineSync()!);

  print('Ingresa el valor del lado B:');
  double ladoB = double.parse(stdin.readLineSync()!);

  double Hipotenusa(double a, double b){
    return sqrt((a*a)+ (b*b));
  }

  var calculo = Hipotenusa(ladoA, ladoB);

  print('El valor de la hipotenusa es: ${calculo.toStringAsFixed(2)}');
  */

  print('Cambio de Celsius a Fahrenheit\nIngresa los grados celsius del horno:');
  double GradosC = double.parse(stdin.readLineSync()!);

  double Cambio(double a){
    return (a*1.8)+32;
  }

  var fahrenheit = Cambio(GradosC);
  print('La temperatura en fahrenheit es de: ${fahrenheit.toStringAsFixed(2)}');

}