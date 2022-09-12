import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_options.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRouter {
  static const initialRoute = 'home';
  static final menuoptions = <MenuOptions>[
    /*MenuOptions(
        route: "home",
        icon: Icons.account_balance,
        name: "Home Screen",
        screen: const HomeScreen()),*/
    MenuOptions(
        route: "listview1",
        icon: Icons.account_balance,
        name: "List view tipo 1",
        screen: const ListView1Screen()),
    MenuOptions(
        route: "listview2",
        icon: Icons.account_balance,
        name: "List view tipo 2",
        screen: const ListView2Screen()),
    MenuOptions(
        route: "alert",
        icon: Icons.add_alert_outlined,
        name: "Alerts",
        screen: const AlertScreen()),
    MenuOptions(
        route: "card",
        icon: Icons.credit_card,
        name: "targetas",
        screen: const CardScreen()),
    MenuOptions(
        route: "avatar",
        icon: Icons.supervised_user_circle_outlined,
        name: "Circle Avatar",
        screen: const AvatarScreen()),
    MenuOptions(
        route: "animate",
        icon: Icons.play_circle_outline_rounded,
        name: "Animate Container",
        screen: const AnimateScreen()),
    MenuOptions(
        route: "inputs",
        icon: Icons.input_rounded,
        name: "Text Inputs",
        screen: const InputScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuoptions) {
      appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  /* //aqui se asignan rutas de una manera
  static Map<String, Widget Function(BuildContext)> routes = {
    "home": (BuildContext context) => const HomeScreen(),
    "listview1": (BuildContext context) => const ListView1Screen(),
    "listview2": (BuildContext context) => const ListView2Screen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
