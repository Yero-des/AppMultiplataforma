import 'package:flutter/material.dart';
import '../screens/screens.dart';

// This is very very IMPORTANT
class AppRoutes {
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'about': (BuildContext context) => const NosotrosScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'list': (BuildContext context) => const ListViewExample(),
  };
  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const NotFoundScreen());
  }
}