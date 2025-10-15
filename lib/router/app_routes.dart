import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home_max, name: 'Pagina Principal', screen: HomeScreen()),
    MenuOption(route: 'alert', icon: Icons.bus_alert, name: 'Pagina de Alerta', screen: AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard, name: 'Pagina de Tarjetas', screen: CardScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'Pagina Lista Tipo 1', screen: ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.view_list, name: 'Pagina Lista Tipo 2', screen: ListView2Screen()),    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
      for (final opciones in menuOptions){
        appRoutes.addAll({opciones.route: (BuildContext context) => opciones.screen});
      }
      return appRoutes;
  }







  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home' : (BuildContext context) => HomeScreen(),
    'listview1' : (BuildContext context) => ListView1Screen(),
    'listview2' : (BuildContext context) => ListView2Screen(),
    'card' : (BuildContext context) => CardScreen(),
    'alert' : (BuildContext context) => AlertScreen()
  };*/
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder:(context) => AlertScreen(),
    );
  }
}
