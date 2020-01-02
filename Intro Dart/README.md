# https://dartpad.dartlang.org/

## Hola Mundo
```
void main(){
    print("Hola Mundo");
}
```

## Comentarios
```
// Comentario Simple

/*
    Comentario Multilinea
*/
```

## Print
Imprimer lo que contega dentro de los parentesis.
```
    void main(){
        print("Hola Mundo");
    }
```

## Variables
El símbolo "$" inyecta la variable directamente en texto
```
void main(){
  var nombre = "tu Nombre";
  print('Hola $nombre');
}
```
Importante: Si no se inicializa una variable, Dart automaticamente lo define como tipo de dato dinámico y no se muestran las opciones para sus propiedades.

## Tipo de Datos

### Numéricos
    int = Números entero.
    double = Número real.
    ```
    void main(){
        int nombreDeLaVariable;
    }
    ```

### Carácteres
    Se define con la parabra "String".
    ```
    void main(){
        String nombreDeLaVariable = 'Tu nombre';
        //muestra lo que contenga la Variable
        print(nombreDeLaVariable);

        //muestra la letra en la posición cero
        print(nombreDeLaVariable[0]);

        //muestra la letra en la última posición
        print(nombreDeLaVariable[nombreDeLaVariable-1]);
    }
    ```
### Boleanos y Condiciones
Guarda valores "true" o "false"
```
void main(){

    bool activado = true;

    if( activado ){
        print("Hola Mundo");
    }
    else{
        print("Hola");
    }

    //Negación
    if( !activado ){
        print("Hola");
    }
    else{
        print("Hola Mundo");
    }
}

```
### Listas
Colección de datos.
```
void main(){
    //Lista de tipo de datos Dinámico
    List numeros = [1,2,3,4,5];
    print( numeros );

    //Añadir datos
    numeros.add(6);

    print( numeros );

    //Lista de datos específicos van entre las llaves <>
    List<String> datos = ["uno","dos","tres"];
    print( datos );

    //Lista de tamaño Fijo
    Lista masNumeros = List(10);
    print( masNumeros );
}
```

### Map
Diccionario de Datos.
```
void main(){
    //Map son pares de valores dinamicos
    Map persona = {
        'nombre':'Adan',
        'edad':30,
        'activo':true
    };

    //Map con valores específicos
    Map<String, dynamic> person = {
        'nombre':'Adan',
        'edad':30,
        'activo':true
    };
    
    print(persona['nombre]);

    //Agregar datos
    //persona.addAll({id:dato});
    person.addAll({'status': 'activo'});
}
```

### Funciones
```
void main(){
    saludar(texto: "Hola,", nombre: "adan");
    saludar2(texto: "Hola,", nombre: "adan");
}

//Tipo de dato para retorno, Nombre de la Función, parámetros a recibir
//Cuando una función tiene las llaves "{}", es por que los parámetros están asociados al nombre del mismo o NameArguments
void saludar({String texto, String nombre}){
    print("$texto $nombre");
}
```

También existe las funciones de flecha

```
void saludar2({String texto, String nombre}) => print("$texto $nombre");

```

### Clases

Clase es un "molde de un objeto" 
La primera letra de una Clase de preferencia debe ser mayuscula.

final: variable que no va a cambiar, parecido a una constante.

```
void main(){
    final mundo = new Mundo(objeto: 'planta',color: 'verde');
    final mundo2 = new Mundo();
    print(mundo.toString());
}

class Mundo{
    String Objeto;
    String Color;

    Mundo({String objeto = "nada", String color = "negro"}){
        this.Objeto = objeto;
        this.Color = color;
    }
  
  String toString(){
    return '${ this.Objeto } - ${this.Color}';
  }
}
```

Clase Minificada

```
void main(){
    final mundo = new Mundo(Objeto: 'planta',Color: 'verde');
    print(mundo.toString());
}

class Mundo{
  String Objeto;
  String Color;

  Mundo({this.Objeto, this.Color});
  
  String toString() => '$Objeto - $Color';
}
```
### Constructor con Nombre
```
//Clases para manejar datos en formato Json
import 'dart:convert';

void main(){
  final rawJson = '{ "Objeto": "planta", "Color": "verde"}';
  final parseJson = json.decode(rawJson);

  final mundo = new Mundo.fromJson(parseJson);
  print(mundo);
}

class Mundo{
  String Objeto;
  String Color;

  Mundo({this.Objeto, this.Color});
  
  //Constructor con Nombre, se le agrega un "." al constructor y posteriormente se agrega los parametros
  Mundo.fromJson(Map parseJson){
    Objeto = parseJson['Objeto'];
    Color = parseJson['Color'];
  }
  
  String toString() => '$Objeto - $Color';
}
```

## Getter y Setter
Cuando a una propiedad se le antepone un "_", automaticamente esa variable se vuelve privada.
```
double _area;
```

Ejemplo de Get y Set

```
void main(){
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;
  print(cuadrado.toString());
  //Se muestra la cin el toString()
  print("Área = $cuadrado.area");
  
  //Muestra solo el resultado
  print("Área = ${ cuadrado.area }");
}

class Cuadrado{
  double _lado;
  double _area;
  
  set lado(double valor){
    if(valor <= 0){
      throw("El lado no puede ser menor o igual a cero");
    }
    
    _lado = valor;
  }
  
  //Get no lleva parentesis
  double get area => _lado * _lado; 
  
  String toString() => "Lado = $_lado";
}
```

## Clases Abstractas
```
void main(){
  final perro = new Perro();
  perro.emitirSonido();
  
  final gato = new Gato();
  gato.emitirSonido();
}

//No se pueden crear instancias de la clase abstracta
//Permite obligar a otras Clases que contengan las propiedades de la Clase Abstracta
abstract class Animal{
  int patas;
  
  void emitirSonido();
}

class Perro implements Animal{
  int patas;
  int colas;
  
  void emitirSonido() => print("Guauuu!!!");
}

class Gato implements Animal{
  int patas;
  int colas;
  
  void emitirSonido() => print("Miauuu!!!");
}
```

## Extends
Hace que las clases hereden los métodos y propiedades que tenga la clase que se hace referencia 
A diferencia del ejemplo anterior, con extend no se tiene que agregar los métodos y/o propiedades
```
void main(){
  
  final sm = new Heroe();
  sm.nombre = "Clark";
  
  final lu = new Villano();
  lo.nombre = "Lex";
}

abstract class Personaje{
  String nombre;
  String poder;
}

class Heroe extends Personaje{
  int valentia;
}

class Villano extends Personaje{
  int maldad;
}
```

## Mixins
Forma de solo asignar lo que necesitamos para ciertas clases.

```
void main(){
  final pato = new Pato();
  pato.volar();
  
  final pezvolador =  new PezVolador();
  pezvolador.nadar();
}

abstract class Animal{ }

abstract class Mamifero extends Animal { }

abstract class Ave extends Animal { }

abstract class Pez extends Animal { }

abstract class Volador{
  void volar() => print("Estoy volando");
}

abstract class Caminante{
  void caminar() => print("Estoy caminando");
}

abstract class Nadador{
  void nadar() => print("Estoy nadando");
}

// INICIO Mixins

class Delfin extends Mamifero with Nadador{}

class Murcielago extends Mamifero with Caminante, Volador{}

class Garo extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}

class Pato extends Ave with Caminante, Volador, Nadador{}

class Tiburon extends Pez with Nadador{}

class PezVolador extends Pez with Nadador, Volador{}

//FIN Mixins
```

## Futures o Futuros
Son impresindibles para realizar tareas asincronas.

```
void main(){
  print("Pidiendo Datos");
  httpGet("https://google.com")
    .then( (data) => print(data))
    .catchError( (err) => print(err));  
  print("Petición Finalizada");
}

//Ejemplo ficticio

//Future<TipoDeDato> Nombre(Parametro)
Future<String> httpGet(String url){
  return Future.delayed( new Duration( seconds: 4), (){
    return "Hola Mundo";
  });
}
```

### Async - Await

Para utilizar el "await" es necesario estar dentro de una función "async"

Nota: No se puede crear constructores asincronos.


```
void main() async{
  print("Pidiendo Datos");
  String data = await httpGet("https://google.com");    
  print(data);
  print("Petición Finalizada");
}

//Ejemplo ficticio

//Future<TipoDeDato> Nombre(Parametro)
Future<String> httpGet(String url){
  return Future.delayed( new Duration( seconds: 4), (){
    return "Hola Mundo";
  });
}
```