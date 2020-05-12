import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import '../../serializers.dart';
import '../models/course.dart';
import 'course_api.dart';

class CourseRepository {
  final CourseApi courseApi;

  CourseRepository(this.courseApi) : assert(courseApi != null);

  Future<BuiltList<Course>> getDefaultList() async {
    final response = await courseApi.fetchCourseList();
    return deserializeListOf<Course>(json.decode(response.body));
  }
}
