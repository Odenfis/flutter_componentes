import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});

  //Dialog para Android
  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder:(context) => AlertDialog(
        title: Text('¡Alerta de Proceso!'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Esto es el contenido interno de la alerta'),
            SizedBox(height: 10),
            FlutterLogo(size: 50)
          ],          
        ),
        actions: [
          TextButton(
            onPressed:() => Navigator.pop(context), 
            child: Text('Cancelar', style: TextStyle(fontSize: 18))
            )
        ],
      ),
      );
  }
  // Dialog para iOS
  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder:(context) => CupertinoAlertDialog(
        title: Text('¡Alerta de Proceso!'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Esto es el contenido interno de la alerta'),
            SizedBox(height: 10),
            FlutterLogo(size: 50)
          ],          
        ),
        actions: [
          TextButton(
            onPressed:() => Navigator.pop(context), 
            child: Text('Cancelar', style: TextStyle(fontSize: 18))
            )
        ],
      ),
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed:() => Platform.isAndroid
          ? displayDialogAndroid(context)
          : displayDialogIOS(context)
          , 
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Procesar',
              style: TextStyle(color: Colors.white, fontSize: 20),
              ),
          )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.cloud_sync, color: Colors.white,),
        ),
    );
  }
}

