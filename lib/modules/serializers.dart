library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'course/models/course.dart';

part 'serializers.g.dart';

/// Example of how to use built_value serialization.
///
/// Declare a top level [Serializers] field called serializers. Annotate it
/// with [SerializersFor] and provide a `const` `List` of types you want to
/// be serializable.
///
/// The built_value code generator will provide the implementation. It will
/// contain serializers for all the types asked for explicitly plus all the
/// types needed transitively via fields.
///
/// You usually only need to do this once per project.
@SerializersFor([
  Course,
  CourseSale,
])

// Fix as in https://efthymis.com/using-standardjsonplugin-with-built_value-for-flutter/
// final Serializers serializers = _$serializers;
Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) => standardSerializers.deserializeWith<T>(
    standardSerializers.serializerForType(T) as Serializer<T>, value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(value
    .map((value) => deserialize<T>(value))
    .toList(growable: false) as List<dynamic>);
