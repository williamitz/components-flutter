import 'dart:convert';
import 'package:flutter/cupertino.dart' show IconData, Widget;

MenuOption menuOptionFromJson(String str) => MenuOption.fromJson(json.decode(str));

String menuOptionToJson(MenuOption data) => json.encode(data.toJson());

class MenuOption {
    MenuOption({
        required this.route,
        required this.icon,
        required this.name,
        required this.screen,
    });

    String route;
    IconData icon;
    String name;
    Widget screen;

    factory MenuOption.fromJson(Map<String, dynamic> json) => MenuOption(
        route: json["route"],
        icon: json["icon"],
        name: json["name"],
        screen: json["screen"],
    );

    Map<String, dynamic> toJson() => {
        "route": route,
        "icon": icon,
        "name": name,
        "screen": screen,
    };
}
