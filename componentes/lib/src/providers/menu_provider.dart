import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  
  List<dynamic> opciones = [];

  _MenuProvider(){
    //cargarData();
  }

  Future<List<dynamic>> cargarData() async {

    //importar services.dart
    //se agrega "show" para indicar el método se require, en este caso rootBundle

    final resp = await rootBundle.loadString('data/menu.json');
    Map dataMap = json.decode(resp);
    opciones = (dataMap['rutas']);

    return opciones;
  }

}

final menuProvider = new _MenuProvider();