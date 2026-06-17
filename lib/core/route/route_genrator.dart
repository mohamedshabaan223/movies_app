import 'package:flutter/material.dart';
import 'package:movies_app/core/route/route_app.dart';
import 'package:movies_app/features/main_shell_screen/presentation/main_shell_screen.dart';

class RouteGenrator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteApp.mainShellScreen:
        return MaterialPageRoute(builder: (_) =>const MainShellScreen());

      default:
        return _undefindRoute();
    }
  }

  static Route<dynamic> _undefindRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('No Route Found')),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
