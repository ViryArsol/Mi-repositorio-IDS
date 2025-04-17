/******************************************************************************

ACTIVIDAD 3 - PROYECTO FINAL - CÁLCULO DE RFC
ALUMNA: VIRIDIANA ARMENTA SOLANO
ASIGNATURA: LENGUAJE DE PROGRAMACIÓN I (C++)

FECHA: 16/04/2025
*******************************************************************************/
#include <iostream> //Libreria para entradas y salidas de datos
#include <string> //libreria para manipulacion de cadenas (std::string)
#include <vector> //libreria para incluir a vectores
#include <map> //libreria para incluir mapas
using namespace std;

/**  BLOQUE DE ESTRUCTURA  **/

//Funcion para obtener la primera clave del RFC
char obtenerprimeravocal(const string& str) {
    //Recorremos la cadena desde el segundo caracter (indice 1) hasta el FINAL
    
    for (size_t i=1; i<str.length(); ++i) {
        char c = str[i]; //se obtiene el caractere actual de la cadena
        
        //verifica que el caracter sea una vocal mayuscula
        if(c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
        return c; //regresa la primera vocal interna encontrada
    }
    return 'X'; //si no se encuentra ninguna vocal interna, se devuelve una X
    
}

//funcion para calcular el RFC en base a los datos personales
string calcularRFC(const string& nombre, const string& apellidoPaterno, const string& apellidoMaterno, const string& fechaNacimiento) {
  string rfc; //variable para almacenar el RFC resultante
  
  //obtendremos la primera letra del apellido apellidoPaterno
  char letraincial = apellidoPaterno[0];
  
  //se obtiene la primera vocal del apellidoPaterno
  
  char letraprimeravocal = obtenerprimeravocal(apellidoPaterno);
  
  //se obtiene la inicial del apellidoMaterno, si no existe se usa una X
  char letraApellidoMaterno = (!apellidoMaterno.empty()) ?apellidoMaterno[0] : 'X';
  
  //Obtiene la inicial del nombre
  char letraNombre = nombre[0];
  
  //Se obtiene los últimos dos digitos del año de fechaNacimiento
  string año = fechaNacimiento.substr(2,2);
  
  //obtenemos el mes de año de nacimiento
  string mes = fechaNacimiento.substr(5,2);
  
  //Obtenemos el dia de nacimiento
  string dia = fechaNacimiento.substr(8,2);
  
  
  //construimos el RFC (concatena los valores, forma la cadena)
  rfc = letraincial;
  rfc += letraprimeravocal;
  rfc += letraApellidoMaterno;
  rfc += letraNombre;
  rfc += año;
  rfc += mes;
  rfc += dia;
  
  //lista de palabras obscenas
  string texto = rfc;
  map<string,string> palabras_Obscenas= { {"BACA", "BXCA"}, {"BAKA","BXKA"}, {"BUEI", "BXEI"}, {"BUEY", "BXEY"}, {"CACA","CXCA"}, {"CACO", "CXCO"}, {"CAGA","CXGA"}, {"CAGO", "CXGO"}, {"CAKA", "CXKA"}, {"CAKO", "CXKO"}, {"COGE","CXGE"}, {"COGI", "CXGI"}, {"COJA", "CXJA"}, {"COJE", "CXJE"}, {"COJI", "CXJI"}, {"COJO", "CXJO"}, {"COLA", "CXLA"}, {"CULO", "CXLO"}, {"FALO", "FXLO"}, {"FETO", "FXTO"}, {"GETA", "GXTA"}, {"GUEI", "GXEI"}, {"GUEY", "GXEY"}, {"JETA", "JXTA"}, {"JOTO", "JXTO"}, {"KACA", "KXCA"}, {"KACO", "KXCO"}, {"KAGA", "KXGA"}, {"KAKA", "KXKA"}, {"KOGE", "KXGE"}, {"TETA", "TXTA"}, {"VACA","VXCA"}, {"SEXO", "SXXO"}, {"VAKA","VXAKA"}, {"VUEI","VXEI"}, {"VUEY", "VXRY"},{"PUTA", "PXTA"}, {"WUEI","WXEI"}, {"WUEY", "WXEY"}};
    

  //Reemplazar las palabras obscenas en el rfc
  for (const auto& par : palabras_Obscenas){
      const string& palabra = par.first;
      const string& reemplazo = par.second;
      
      size_t pos = rfc.find(palabra);
      if (pos != string::npos){
          
          rfc.replace(pos,palabra.length(),reemplazo); //se reemplaza con el correspondiente
      }

      }
      
       return rfc; //se regresa el RFC generado
  }

 
  


/**BLOQUE DE INGRESO Y SALIDA DE DATOS**/

int main (){
  
  string nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento;
  //solicita los datos del usuario
  cout <<"Ingrese el nombre:  "<<endl;
  getline(cin,nombre); //captura toda la linea del nombre
    
 cout<<"Ingrese el apellido paterno: "<<endl;
 getline(cin,apellidoPaterno); //obtiene el apellido paterno
 
  cout<<"Ingrese el apellido materno, si no tiene, presione enter:  " <<endl;
  getline(cin,apellidoMaterno); //obtenemos el apeliido materno
  
  cout<<"Ingrese la fecha de nacimiento de la siguiente manera : aaaa-mm-dd"<<endl;
  getline(cin,fechaNacimiento); //obtenemos los datos de la fecha de nacimiento
  
  string rfc = calcularRFC (nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento);
  
  
  
  cout<< endl<< "Tu RFC es : " <<rfc <<endl;
  
  return 0;//finaliza el programa
  
 
}

   
    
