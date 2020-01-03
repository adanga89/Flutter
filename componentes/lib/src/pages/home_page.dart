import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista(){
  //print(menuProvider.opciones);
  //El siguiente método no es viable porque se crea la lista y después recupera los datos.
  // menuProvider.cargarData().then((opciones) {
  //   print( opciones );
  // });
  // return ListView(
  //   children: _listaItems(),
  // );

  //Para la carga de datos es viable utilizar futureBuilder
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
       return ListView(
         children: _listaItems( snapshot.data ),
       );
      },
    );
  }
      
  List<Widget> _listaItems(List<dynamic> data) {
    
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final wtemp = ListTile( 
        title: Text(opt['texto']),
        //leading, asigna un widget al inicio
        leading: getIcon( opt['icon']),
        //trailing, asigna un widget al final del elemento
        trailing: Icon( Icons.keyboard_arrow_right),
        onTap: () {},
      );

      opciones..add(wtemp)
              ..add(Divider());
    });

    return opciones;
  }
}

//Para agregar Recursos Físicos abrimos el pubspect.yaml, se descomenta la parte de asset y se agrega con un - NombreCarpeta/Archivo.extension

//Convertir Json en un MAP es necesario importar 'dart:convert' y utilizar json.decode(data);