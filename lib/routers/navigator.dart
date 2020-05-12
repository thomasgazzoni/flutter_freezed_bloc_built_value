import 'package:flutter/widgets.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppNavigator {

  static void push(String routeName,
      {Object params, bool replace = false, bool clearStack = false,}) {
    if (replace) {
      navigatorKey.currentState
          .pushReplacementNamed(routeName, arguments: params);
    }
    navigatorKey.currentState.pushNamed(routeName, arguments: params);
  }

  static void goBack() {
    navigatorKey.currentState.pop();
  }

  static void popWithResult(dynamic result) {
    navigatorKey.currentState.pop(result);
  }
}
