import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';
import '../screens/screens.dart';
import '../models/menu_option.dart';

// This is very very IMPORTANT
class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(router: 'home', data: Icons.house_sharp, name: 'Home Screen', widget: const HomeScreen(), color: Colors.black),
    MenuOption(router: 'profile', data: Icons.person_outline, name: 'Profile', widget: const ProfileScreen(), color: Colors.black),
    MenuOption(router: 'about', data: Icons.info_outline_rounded, name: 'About', widget: const NosotrosScreen(), color: Colors.black),
    MenuOption(router: 'alert', data: Icons.crisis_alert_outlined, name: 'Alert', widget: const AlertScreen(), color: Colors.blueAccent),
    MenuOption(router: 'list', data: Icons.line_style_rounded, name: 'List', widget: const ListViewExample(), color: Colors.blueAccent),
    MenuOption(router: 'list2', data: Icons.view_list_sharp, name: 'Second List', widget: const ListView2Screen(), color: Colors.blueAccent),
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