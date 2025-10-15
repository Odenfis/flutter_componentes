import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home' : (BuildContext context) => HomeScreen(),
    'listview1' : (BuildContext context) => ListView1Screen(),
    'listview2' : (BuildContext context) => ListView2Screen(),
    'card' : (BuildContext context) => CardScreen(),
    'alert' : (BuildContext context) => AlertScreen()
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder:(context) => AlertScreen(),
    );
  }
}