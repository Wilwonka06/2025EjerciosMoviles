import 'dart:io'; /// para usar el input

(int, int) dtosEntrada() {
        print('Ingrese el primer número:');
        int a = int.parse(stdin.readLineSync()!);
        print('Ingrese el segundo número:');
        int b = int.parse(stdin.readLineSync()!);
        return (a, b);
    }

    int suma(int a, int b) {
        return a + b;
    }

    int resta(int a, int b) {
        return a - b;
    }

    int multiplicacion(int a, int b) {
        return a * b;
    }

    int division(int a, int b) {
        return a ~/ b;
    }
void main() {
    //declaración de variables y pedido de datos
    int resultado = 0;

    bool salir = false;
    while(!salir) {
        print('''Qué quieres hacer?
        1. Suma
        2. Resta
        3. Multiplicación
        4. División
        5. Salir
        ''');
        int opcion = int.parse(stdin.readLineSync()!);

        switch(opcion) {
            case 1: {
                var (a, b) = dtosEntrada();
                resultado = suma(a, b);
                print('El resultado de la suma $a + $b es $resultado');
                break;
            }
            case 2: {
                var (a, b) = dtosEntrada();
                resultado = resta(a, b);
                print('El resultado de la resta $a - $b es $resultado');
                break;
            }
            case 3: {
                var (a, b) = dtosEntrada();
                resultado = multiplicacion(a, b);
                print('El resultado de la multiplicación $a * $b es $resultado');
                break;
            }
            case 4: {
                var (a, b) = dtosEntrada();
                resultado = division(a, b);
                print('El resultado de la división $a / $b es $resultado');
                break;
            }
            case 5: {
                print('Saliendo del programa...');
                salir = true;
                break;
            }
            default: {
                print('Opción inválida');
                break;
            }
        }
    }
}

void recorrido(){
    
}