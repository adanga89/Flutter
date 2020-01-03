import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/pages/contador_page.dart';

class MyApp extends StatelessWidget{

  //build, es el que crea el widget
  //context, conoce toda información
  @override
  Widget build( context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage()
        ),
    );
  }

}