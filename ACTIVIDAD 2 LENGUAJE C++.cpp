/******************************************************************************
ACTIVIDAD 2 - SUMA, RESTA, MULTIPLICACIÓN Y DIVISIÓN
VIRIDIANA ARMENTA SOLANO
LENGUAJES DE PROGRAMACIÓN I
FECHA: 07/04/2025
*******************************************************************************/
#include <stdio.h>
#include <iostream>

  int main() {
      
    float numero1, numero2; /*definimos variables como tipo de dato flotante, esto porque
    vamos la actividad nos pide que se permitan los numeros decimales*/
    
    /* primero vamos a solicitar los datos para poder ingresarlos a las variables creadas*/
    std::cout << "Ingrese el primer número: "; 
    
    std::cin >> numero1;
    
    std::cout << "ingrese el segundo número: ";
    
    std::cin >> numero2;
    /* Ahora creamos las variables de las operaciones y les asignamos
    el orden de la operación, aqui tambien lo colocamos flotante para que nos 
    arroje resultados en decimal*/
    
    float suma = numero1 + numero2;
    float resta = numero1 - numero2;
    float multiplicacion = numero1 * numero2;
    float division = numero1 / numero2;
    
    /* Una vez creadas las operaciones, vamos a realizar la salida de estos datos*/
    
    std::cout << "\nDe acuerdo a los numeros ingresados, \nlos resultados de las siguientes operaciones son:\n";
    std::cout << "\nLa suma de estos numeros es: " << suma << std::endl;
    std::cout << "la resta de estos numeros es: " << resta << std::endl;
    std::cout << "la multiplicacion de estos numeros es: " << multiplicacion << std::endl;
    std::cout << "la division entre estos dos numeroes es: " << division << std::endl;

    return 0;
}