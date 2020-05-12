import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/course.dart';
import '../services/course.dart';
import 'course_list.dart';

class CourseMain extends StatelessWidget {
  final _courseRepository = CourseRepository(CourseApi());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseBloc(_courseRepository),
      child: CourseListPage(),
    );
  }
}
