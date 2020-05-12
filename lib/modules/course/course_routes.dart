import 'package:flutter/widgets.dart';
import 'page/course_main.dart';
import 'page/course_detail.dart';

class CourseRoutes {
  static String mainPage = '/course_main';
  static String datailPage = '/course_detail';
  static String searchPage = '/course_search';

  static Map<String, WidgetBuilder> get routes {
    return {
      mainPage: (context) {
        return CourseMain();
      },
      datailPage: (context) {
        return CourseDetailPage();
      },
    };
  }
}
