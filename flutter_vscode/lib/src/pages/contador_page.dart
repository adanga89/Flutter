import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();

}

//Se necesita el estado para es statefulWidget
class _ContadorPageState extends State<ContadorPage>{
  final TextStyle _estiloTexto = new TextStyle( fontSize: 25);
  int _conteo = 0;

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
            Text("Número de Tabs:", style: _estiloTexto),
            Text("$_conteo", style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox( width: 30.0),
          FloatingActionButton(
          onPressed: () {
            //Para redibujar es necesario SetState
            setState(() {
              _conteo = 0;
            });
          },
          child: Text("0"),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: () {
            //Para redibujar es necesario SetState
            setState(() {
              _conteo--;
            });
          },
          child: Icon(Icons.remove),
        ),
        SizedBox( width: 5.0),
        FloatingActionButton(
          onPressed: () {
            //Para redibujar es necesario SetState
            setState(() {
              _conteo++;
            });
          },
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}