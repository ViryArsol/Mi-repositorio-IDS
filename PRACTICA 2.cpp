/******************************************************************************

EJERCICIOS PARA PRACTICAR
VIRIDIANA ARMENTA SOLANO
FECHA 22/04/2025
2DO EJERCICIO: CREAR UN PROGRAMA QUE AL RECIBIR COMO DATO EL RADIO DE UN CIRCULO,
CALCULE E IMPRIMA SU AREA COMO LA LONGITUD DE SU CIRCUNFERENCIA

*******************************************************************************/
#include <iostream>
#include <cmath>
using namespace std;

int main (){

    float radio;
    float π=3.1415;
    
    cout <<"Ingrese el radio: ";
    cin >> radio;
    
    float radio_cuadrado= radio*radio;
    
    float area =  π*radio_cuadrado;
    float perimetro = 2*π*radio;
    
    cout << "El area de este circulo es de:  "<<area<<"m2"<<endl;
    cout << "el perimetro de este circulo es de: "<<perimetro<<"m";
    
    

    return 0;
}