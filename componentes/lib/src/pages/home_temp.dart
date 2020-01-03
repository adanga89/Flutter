//Pruebas

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones = ["uno","dos","tres","cuatro","cinco"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Componentes Temp"),
        ),
        body: ListView(
          children: _crearItemsCorto()
        ),
      ),
    );
  }

  List<Widget> _crearItems(){
  
    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt)
      );
      
      lista..add(tempWidget)
          ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto(){

    //Regresa una nueva lista que pasa por la función definida  
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item.toUpperCase()),
            subtitle: Text("Subtitulo"),
            //leading, asigna un widget al inicio
            leading: Icon( Icons.ac_unit),
            //trailing, asigna un widget al final del elemento
            trailing: Icon( Icons.keyboard_arrow_right),
            

          ),
          Divider()
        ],
      );
    }).toList();
  }

}


//Lista de Elementos -> ListView
//Muchos registros -> ListView.Builder
//Componentes
/*
* ListView
    ListTile
*/
//for in