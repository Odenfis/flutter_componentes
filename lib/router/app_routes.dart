
import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home',icon: Icons.house_siding_sharp, name: 'HomeScreen', screen: const HomeScreen()),
    MenuOption(route: 'listview1',icon: Icons.list_alt_rounded, name: 'ListView1', screen: const ListView1Screen()),
    MenuOption(route: 'listview2',icon: Icons.line_style_rounded, name: 'ListView2', screen: const ListView2Screen()),
    MenuOption(route: 'card',icon: Icons.card_membership_rounded, name: 'CardScreen', screen: const CardScreen()),
    MenuOption(route: 'alert',icon: Icons.bus_alert, name: 'AlertScreen', screen: const AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.all_inclusive_sharp, name: 'AvatarScreen', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.animation_outlined, name: 'AnimatedScreen', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs',icon: Icons.import_contacts_outlined, name: 'InputsScreen',screen: const InputsScreen())
  ];



  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home':(BuildContext context) => const HomeScreen(),
        'listview1':(BuildContext context) => const ListView1Screen(),
        'listview2':(BuildContext context) => const ListView2Screen(),
        'card':(BuildContext context) => const CardScreen(),
        'alert':(BuildContext context) => const AlertScreen()
  };*/

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    //Iterador para recorrer routes!
    for (final options in menuOptions){
      appRoutes.addAll({options.route:(BuildContext context) => options.screen});      
    }
      return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
          builder: (context) => const AlertScreen()
          );
  }
}