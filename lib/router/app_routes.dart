import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  //mejora de las opciones para el uso de screens
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'HomeScreen', screen: HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt_outlined, name: 'ListView1-Screen', screen: ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.line_style_rounded, name: 'ListView2-Screen', screen: ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard, name: 'CardScreen', screen: CardScreen()),
    MenuOption(route: 'alert', icon: Icons.bus_alert, name: 'AlertScreen', screen: AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.verified_user, name: 'AvatarScreen', screen: AvatarScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for(final options in menuOptions){
      appRoutes.addAll({options.route:(BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => HomeScreen(),
    'listview1': (BuildContext context) => ListView1Screen(),
    'listview2' : (BuildContext context) => ListView2Screen(),
    'card' : (BuildContext context) => CardScreen(),
    'alert' : (BuildContext context) => AlertScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
          builder:(context) => AlertScreen(),
          );
  }
}