import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_event.freezed.dart';

@freezed
abstract class CourseEvent with _$CourseEvent {
  const factory CourseEvent.fetchList() = FetchList;
  const factory CourseEvent.fetchError([String message]) = FetchError;
}
