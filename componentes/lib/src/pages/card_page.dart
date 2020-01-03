import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Título de la tarjeta"),
            subtitle: Text("Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: (){},
              ),
              FlatButton(
                child: Text("OK"),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTyeY0KFWAu4qCdYbgtZ6Zj64vleMYU3H-upFoVNvYw80UNf-2G"),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(seconds: 2),
            height: 250,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTyeY0KFWAu4qCdYbgtZ6Zj64vleMYU3H-upFoVNvYw80UNf-2G")
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Imagen")
          )
        ],
      ),
    );
  }
}