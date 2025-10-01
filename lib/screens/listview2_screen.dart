import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final opciones = const['Korn','Slipknot','Limp Bizkit','System of a Down'];
   
  const ListView2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 2 Test'),
      ),  
      );
    
  }
}