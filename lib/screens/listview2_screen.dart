import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final opciones = const['Korn','Slipknot','Limp Bizkit','System of a Down','Mudvayne'];
   
  const ListView2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 2 Test'),
        backgroundColor: Colors.amber,        
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: Icon(Icons.music_note),
          title: Text(opciones[index]),
          trailing: Icon(Icons.play_arrow, color: Color.fromARGB(100, 218, 140, 6),),
          onTap: () {
            final opt = opciones[index];
            print(opt);
          },
        ), 
        separatorBuilder:(context, index) => Divider(), 
        itemCount: opciones.length),  
      );
    
  }
}