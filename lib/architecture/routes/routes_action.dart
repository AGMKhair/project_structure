import 'package:flutter/material.dart';
import 'package:project_structure/architecture/routes/routes.dart';

class RoutesAction {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        // return MaterialPageRoute(builder: (_) => const HomeScreen());
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
}