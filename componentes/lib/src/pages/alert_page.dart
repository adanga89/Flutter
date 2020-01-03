import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertas"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.backspace),
          onPressed: () {
            //Cierra la ventana
            Navigator.pop(context);
          },
        ),
      );
  }
}