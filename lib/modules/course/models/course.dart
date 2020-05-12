import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'course.g.dart';

abstract class CourseSale implements Built<CourseSale, CourseSaleBuilder> {
  static Serializer<CourseSale> get serializer => _$courseSaleSerializer;

// Constructors
  CourseSale._();
  factory CourseSale([updates(CourseSaleBuilder b)]) = _$CourseSale;

// Fields
  String get currency;

  @BuiltValueField(wireName: 'sale_price')
  String get price;
}

abstract class Course implements Built<Course, CourseBuilder> {
  static Serializer<Course> get serializer => _$courseSerializer;

// Constructors
  Course._();
  factory Course([updates(CourseBuilder b)]) = _$Course;

// Fields
  int get id;

  String get name;

  String get cover;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get studyNum;

  @nullable
  int get feeType;

  @BuiltValueField(wireName: 'fee_currency')
  BuiltList<CourseSale> get feeCurrency;

  /// This getter is marked [memoized], so it will be called at most once. The
  /// result will be stored in the instance and reused.
  @memoized
  int get displayStudyNum => studyNum ?? 0;

  @memoized
  String get imageUrl => cover;

  @memoized
  String get displayFirstSalePrice => feeCurrency.first?.price ?? '~';

  @memoized
  String get displayFirstSaleCurrency => feeCurrency.first?.currency ?? '~';
}
