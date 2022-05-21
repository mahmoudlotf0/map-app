import 'package:flutter/material.dart';
import 'package:mapapp/presentation/screens/register/register.dart';

class Routes {
  static const String resgisterRoute = '/';
}

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.resgisterRoute:
        return MaterialPageRoute(builder: (_) => Register());
    }
  }
}
