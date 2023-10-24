import 'package:flutter/material.dart';
import '../screens/screens.dart';
import '../models/menu_option.dart';

// This is very very IMPORTANT
class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(router: 'home', data: Icons.house_sharp, name: 'Home Screen', color: Colors.black, widget: const HomeScreen()),
    MenuOption(router: 'about', data: Icons.info_outline_rounded, name: 'About', color: Colors.blueAccent, widget: const NosotrosScreen()),
    MenuOption(router: 'alert', data: Icons.crisis_alert_outlined, name: 'Alert', color: Colors.blueAccent, widget: const AlertScreen()),
    MenuOption(router: 'list', data: Icons.line_style_rounded, name: 'List', color: Colors.redAccent, widget: const ListViewExample()),
    MenuOption(router: 'list2', data: Icons.view_list_sharp, name: 'Second List', color: Colors.redAccent, widget: const ListView2Screen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for(final options in menuOptions) {
      appRoutes.addAll({options.router: (BuildContext context) => options.widget});
    }
    return appRoutes;
  }
  
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'about': (BuildContext context) => const NosotrosScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'list': (BuildContext context) => const ListViewExample(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const NotFoundScreen());
  }
}