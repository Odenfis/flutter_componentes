import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  
  //Variables que modifiquen el cuerpo del objeto
  double _width = 50;
  double _height = 50;
  Color _color = Colors.brown;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  
  void changeShape(){
    //generar el cambio de los valores superiores
    _width += 30;
    _height += 30;
    _color = Colors.deepOrange;
    _borderRadius = BorderRadius.circular(30);
    setState(() {});

  }

  void changeShape1(){
    final rndm = Random();
    _width = rndm.nextInt(300).toDouble() + 70;
    _height = rndm.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      rndm.nextInt(255), 
      rndm.nextInt(255), 
      rndm.nextInt(255), 
      1);
    _borderRadius = BorderRadius.circular(rndm.nextInt(100).toDouble());
    
    setState(() {});
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fantasias Animadas de Ayer y Hoy'
        ,style: TextStyle(
          color: Colors.white
        ),
        ),
      ),
      body: Center(
         child: Container(
          width: _width,
          height: _height,
          //color: Colors.red,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeShape1(),
        child: const Icon(Icons.perm_camera_mic, color: Colors.amber,)),
        
    );
  }
}