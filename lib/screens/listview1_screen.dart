import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final opciones = const['Korn','Slipknot','Limp Bizkit','System of a Down'];
   
  const ListView1Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 1 Test'),
      ),
      body: ListView(
        children: [

          ...opciones.map(
            (v) => ListTile(
              leading: Icon(Icons.rocket_launch_rounded),
              title: Text(v),
              trailing: Icon(Icons.arrow_back_ios),
            )
          )

          /*
          ListTile(
            leading: Icon(Icons.check),
            title: Text('Esto es un item de una lista'),
          ),

          Text('Listita de prueba'),
          Text('Listita de prueba'),
          Text('Listita de prueba'),
          Text('Listita de prueba'),
          Text('Listita de prueba'),
          Text('Listita de prueba'),
          Text('Listita de prueba'),
          Text('Listita de prueba'),
          Text('Listita de prueba'),
          Text('Listita de prueba'),
          Text('Listita de prueba'),*/
        ],
      )
    );
  }
}