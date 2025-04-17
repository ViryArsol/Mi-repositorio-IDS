/******************************************************************************

CLASES EN C++

*******************************************************************************/
#include <iostream>
#include <stdio.h>
using namespace std;

class Persona{
    private:  //Atributos 
        int edad;
        string nombre;
        
    public://métodos
        Persona(int, string); //constructor
        void leer ();
        void correr();
};
//constructor, nos sirve para inicializar los atributos de la clase
Persona::Persona(int _edad,string _nombre){
    edad = _edad;
    nombre = _nombre;
    
 }

void Persona::leer(){
    cout<<"soy "<<nombre<<" y estoy leyendo un libro"<<endl;
}

void Persona::correr(){
    cout<<"soy "<<nombre<<" estoy corriendo un maraton y tengo "<<edad<<" años"<<endl;
}

int main(){
    Persona p1 = Persona(20, "viridiana");
    
    Persona p2(19, "miguel ");
    
    Persona p3(25, "Juanita");
    
    p1.leer();
    p2.correr();
    p3.correr();
    p3.leer();
   
    system("pause");
        return 0;
}