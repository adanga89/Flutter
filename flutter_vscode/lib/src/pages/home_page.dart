import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

final TextStyle estiloTexto = new TextStyle( fontSize: 25);
final conteo = 10;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Número de Tabs:", style: estiloTexto),
            Text("$conteo", style: estiloTexto),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(Icons.add),
      ),
    );
  }
  
}

//Scaffold Buscar...
//La mayoria de los Widgets solo pueden tener un Child