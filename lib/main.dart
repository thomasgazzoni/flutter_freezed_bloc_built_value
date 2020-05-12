import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show DeviceOrientation, SystemChrome, SystemUiOverlayStyle;

import 'modules/course/page/course_main.dart';
import 'routers/navigator.dart';
import 'routers/setup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Run App
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      showPerformanceOverlay: false,
      checkerboardRasterCacheImages: false,
      showSemanticsDebugger: false,
      navigatorKey: navigatorKey,
      theme: ThemeData.light().copyWith(backgroundColor: Colors.white),
      // routes: Routes.routes,
      home: CourseMain(),
    );
  }
}
