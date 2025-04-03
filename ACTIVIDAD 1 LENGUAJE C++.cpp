/******************************************************************************

                            Online C Compiler.
                Code, Compile, Run and Debug C program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <stdio.h> /*esta es una libreria de cabecera que permite la
entrada y salida de datos */
#include <iostream> /*esta libreria permite las operaciones de entrada 
y salida de datos */

int main() { //esta es una función que da inicio al programa 
    
int edad; //Asignamos tipo de dato, esta vez número entero a la variable "edad"
std::cout << "ingrese su edad: \n"; //esta función nos permite imprimir la leyenda asignada
std::cin >> edad; //esta función nos permite escanear el valor dado y asignarlo a la variable

if (edad >= 18) {
    std::cout << "\n Es mayor de edad"; //aqui decimos que si el valor es mayor o igual a 18 deberá afirmar que es mayor de edad
}
    else {
    std::cout <<"Es menor de edad"; //aca si no cumple con la afirmación anterior, deberá confirmar que no es mayor de edad
}
    return 0;
}