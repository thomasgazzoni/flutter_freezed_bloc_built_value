import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/course.dart';

part 'course_state.freezed.dart';

@freezed
abstract class CourseState with _$CourseState {
  const factory CourseState({@Default([]) List<Course> value}) = Initial;
  const factory CourseState.loading() = Loading;
  const factory CourseState.success(BuiltList<Course> value) = Success;
  const factory CourseState.failure([String message]) = Failure;
}
