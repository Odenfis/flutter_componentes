//import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Componentes en Flutter',
          style: TextStyle(
            color: Colors.white
          ),
          ),
        elevation: 1,
        backgroundColor: Colors.indigo,
      ),
    body: ListView.separated(
      itemBuilder:(context, index) => ListTile(
        leading: Icon(Icons.settings_input_hdmi_rounded),
        title: Text('Items de prueba'),
        trailing: Icon(Icons.add_circle_outline_rounded),
        onTap: (){
          //final route = MaterialPageRoute(builder:(context) => AlertScreen());
          //Navigator.push(context, route);
          Navigator.pushNamed(context, 'tarjeta');
        },
      ), 
      separatorBuilder:(context, index) => Divider(), 
      itemCount: 20),
    );
  }
}