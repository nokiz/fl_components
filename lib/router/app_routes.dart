import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'listview1', name: 'ListView 1', screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListView 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alert', screen: const AlertScreen(), icon: Icons.warning_amber),
    MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.web),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated', screen: const AnimatedScreen(), icon: Icons.animation),
    MenuOption(route: 'inputs', name: 'Inputs', screen: const InputsScreen(), icon: Icons.text_fields),
    MenuOption(route: 'slider', name: 'Slider', screen: const SliderScreen(), icon: Icons.photo_size_select_small),
    MenuOption(route: 'listviewbuilder', name: 'Infinite scroll + pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.list_alt_sharp),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }

    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': ( BuildContext context ) => const HomeScreen(),
    'listview1': ( BuildContext context ) => const ListView1Screen(),
    'listview2': ( BuildContext context ) => const ListView2Screen(),
    'alert': ( BuildContext context ) => const AlertScreen(),
    'card': ( BuildContext context ) => const CardScreen(),
  };
  */

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}