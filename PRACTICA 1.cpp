/******************************************************************************

EJERCICIOS PARA PRACTICAR
VIRIDIANA ARMENTA SOLANO
FECHA 22/04/2025
1ER EJERCICIO: Crear un programa que, al recibir como dos datos el costo de un
articulo vendido y la cantidad de dinero entregada por el cliente, calcule
e imprima el cambio que se debe entregar al cliente

*******************************************************************************/
#include <iostream>
using namespace std;

int main (){

    
    double precio;
    double pago;
    
   
    cout <<"Ingrese el precio de la prenda: ";
    cin >> precio;
    cout << "Ingrese el pago dado por el cliente:  ";
    cin >> pago;
    
    double cambio = pago - precio;
    
    if (pago>precio) {

        cout << "Al cliente le sobra: " << cambio;
    }  else if (pago<precio) {
        cout << "Al cliente le falta pagar: " <<cambio;
    } else {
        cout<< "El cliente pago exacto, no se regresa cambio";
    }
    
 
    return 0;
}