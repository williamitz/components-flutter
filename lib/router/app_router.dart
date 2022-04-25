import 'package:flutter/material.dart';

import 'package:components_app/screens/screens.dart';
import 'package:components_app/models/models.dart';

class AppRouter {
  static const String initialRoute = '';
  static final menuOpt = <MenuOption>[
    // TODO: borrar home

    MenuOption(
        screen: const HomeScreen(),
        icon: Icons.home,
        name: 'Home screen',
        route: ''),

    MenuOption(
        screen: Lisview2Screen(),
        icon: Icons.list,
        name: 'Listview screen',
        route: 'listview'),

    MenuOption(
        screen: const CardScreen(),
        icon: Icons.casino_rounded,
        name: 'Card screen',
        route: 'card'),

    MenuOption(
        screen: const AlertScreen(),
        icon: Icons.chat_bubble_outline_outlined,
        name: 'Alert screen',
        route: 'alert'),
  ];

  // static Map<String, Widget Function(BuildContext)> buildRoute;

  static Map<String, Widget Function(BuildContext)> routes = {
    '': (_) => const HomeScreen(),
    'listview': (_) => Lisview2Screen(),
    'alert': (_) => const AlertScreen(),
    'card': (_) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
