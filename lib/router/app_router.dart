import 'package:flutter/material.dart';

import 'package:components_app/screens/screens.dart';
import 'package:components_app/models/models.dart';

class AppRouter {
  static const String initialRoute = '';
  static final menuOpt = <MenuOption>[

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

    MenuOption(
        screen: const AvatarScreen(),
        icon: Icons.person_pin,
        name: 'Avatar screen',
        route: 'avatar'),

    MenuOption(
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_fill_outlined,
        name: 'Animated screen',
        route: 'animated'),
        
    MenuOption(
        screen: const InputsScreen(),
        icon: Icons.label_important_outline_rounded,
        name: 'Inputs screen',
        route: 'inputs'),
        
  ];

  static Map<String, Widget Function(BuildContext)> buildRoute() {
    final Map<String, Widget Function(BuildContext)> routes = {};

    routes.addAll({'': (BuildContext context) => const HomeScreen()});

    for (var opt in menuOpt) {
      routes.addAll({opt.route: (BuildContext context) => opt.screen});
    }

    return routes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '': (_) => const HomeScreen(),
  //   'listview': (_) => Lisview2Screen(),
  //   'alert': (_) => const AlertScreen(),
  //   'card': (_) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
