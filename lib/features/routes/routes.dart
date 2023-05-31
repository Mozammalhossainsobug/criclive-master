import 'package:flutter/material.dart';
import 'package:criclive/features/presentation/pages/score_page.dart';
// Import other page widgets for additional routes

import 'route_constants.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.scorePage:
        return MaterialPageRoute(builder: (_) => ScorePage());
      // Add more cases for additional routes

      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ));
    }
  }
}
