//import 'package:fl_componentes/screens/screens.dart';
import 'package:fl_componentes/router/app_routes.dart';
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
        leading: Icon(AppRoutes.menuOptions[index].icon),
        title: Text(AppRoutes.menuOptions[index].name),
        trailing: Icon(Icons.add_circle_outline_rounded),
        onTap: (){
          //final route = MaterialPageRoute(builder:(context) => AlertScreen());
          //Navigator.push(context, route);
          Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
        },
      ), 
      separatorBuilder:(context, index) => Divider(), 
      itemCount: AppRoutes.menuOptions.length),
    );
  }
}