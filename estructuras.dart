import 'dart:io';

void main() {
  listExample();
  setExample();
 ejercicios();
/*  stuent(); */
}

void listExample() {
  List<String> numbers = ['one', 'two', 'tres'];
  var numbers2 = ['cuatro', 'cinco', 'seis'];

  numbers[0] = 'uno pelao';
  numbers.add('cuatro');

  numbers.addAll(numbers2); //unir listas

  numbers.removeAt(4);
  numbers.insert(0, 'He pelao'); //corre los demas elementos

  //numbers.clear(); //Limpia tod el array

  for (var i = 0; i < numbers.length; i++) {
    numbers[i];
  }
}

void setExample() {
  Set<String> numbers = {'uno', 'dos', 'tres'}; //no acepta repeticiones
  var numbers2 = {'dos', 'cinco', 'seis'};

  numbers.add('siete');
  numbers.addAll(numbers2);

  numbers.removeWhere((element) => element == 'siete');
}

void MapExample() {
  Map<String, int> numbers = {'uno': 1, 'dos': 2, 'tres': 3};

  numbers['cuatro'] = 4;
  ;
  numbers['uno'] = 10;

  numbers.removeWhere((key, value) => key == 'cuatro');
}

void ejercicios() {
  stdout.write('Ingresa el tamaño de la lista:');
  int tmn = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  List<int> listPrimo = [];
  List<int> listNPrimo = [];

  for (var i = 0; i < tmn; i++) {
    stdout.write('Ingresa el elemento ${i + 1}: ');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  bool esPrimo(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  for (int num in numbers) {
    if (esPrimo(num)) {
      listPrimo.add(num);
    } else {
      listNPrimo.add(num);
    }
  }

  print('Números primos: $listPrimo');
  print('Números no primos: $listNPrimo');
}

/* void stuent(){
  Map Estudiantes ={
    'machado': 17,
    'sarai': 18,
    'maria': 18,
    'wilson': 18,
    'david': 21
  };

  stdout.write('Ingresa el nombre del estudiante: ');
  String nombre = stdin.readLineSync()!.toLowerCase();

if (Estudiantes.containsKey(nombre)) {
      print('Nombre: $nombre, Edad: ${Estudiantes[nombre]}');
    }else{
      print('El estudiante no esta registrado');
    }
} */