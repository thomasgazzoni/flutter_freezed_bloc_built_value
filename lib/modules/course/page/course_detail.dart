import 'package:flutter/material.dart';
import '../../../widgets/layout/scaffold.dart';
import '../models/course.dart';

class CourseDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CourseDetailPage();
  }
}

class _CourseDetailPage extends State<CourseDetailPage> {
  Course _courseInfo;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _courseInfo = ModalRoute.of(context).settings.arguments as Course;
  }

  @override
  Widget build(BuildContext context) {
    return BasePageScaffold(
      title: _courseInfo.name,
      child: Container(),
    );
  }
}
