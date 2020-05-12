import 'package:flutter/material.dart';
import '../modules/course/course_routes.dart';

class Routes {
  static String initialRoute = CourseRoutes.mainPage;
  static final Map<String, WidgetBuilder> _appRoutes = {};

  static Map<String, WidgetBuilder> get routes {
    _appRoutes.clear();

    // Modules Routes
    _appRoutes.addAll(CourseRoutes.routes);

    return _appRoutes;
  }
}
