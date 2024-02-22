import 'package:flutter/material.dart';
import 'package:project_structure/architecture/routes/route_helper.dart';
import 'package:project_structure/architecture/routes/routes.dart';
import 'package:project_structure/screen/home_screen.dart';
import 'package:project_structure/screen/main_screen.dart';
import 'package:project_structure/screen/nev_bar/one_screen.dart';
import 'package:project_structure/screen/nev_bar/two_screen.dart';

class RoutesAction {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    RouteHelper value = settings.arguments as RouteHelper;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    case Routes.twoScreen:
        return MaterialPageRoute(builder: (_) => const TwoScreen());
      case Routes.menuScreen:
        // return MaterialPageRoute(builder: (_) => const MenuScreen());
      case Routes.searchScreen:
        // return MaterialPageRoute(builder: (_) => const SearchScreen());
      case Routes.supportScreen:
        // return MaterialPageRoute(builder: (_) => SupportScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }



  static  getRoutesPath(BuildContext context){
    return {
        Routes.mainScreen: (context) => MainScreen(),
        Routes.homeScreen: (context) => HomeScreen(),
        Routes.oneScreen: (context) => OneScreen(),
        Routes.twoScreen: (context) => TwoScreen(),
    };
  }
}