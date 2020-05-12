// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CourseSale> _$courseSaleSerializer = new _$CourseSaleSerializer();
Serializer<Course> _$courseSerializer = new _$CourseSerializer();

class _$CourseSaleSerializer implements StructuredSerializer<CourseSale> {
  @override
  final Iterable<Type> types = const [CourseSale, _$CourseSale];
  @override
  final String wireName = 'CourseSale';

  @override
  Iterable<Object> serialize(Serializers serializers, CourseSale object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'currency',
      serializers.serialize(object.currency,
          specifiedType: const FullType(String)),
      'sale_price',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CourseSale deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourseSaleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sale_price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CourseSerializer implements StructuredSerializer<Course> {
  @override
  final Iterable<Type> types = const [Course, _$Course];
  @override
  final String wireName = 'Course';

  @override
  Iterable<Object> serialize(Serializers serializers, Course object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'cover',
      serializers.serialize(object.cover,
          specifiedType: const FullType(String)),
      'fee_currency',
      serializers.serialize(object.feeCurrency,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CourseSale)])),
    ];
    if (object.studyNum != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.studyNum,
            specifiedType: const FullType(int)));
    }
    if (object.feeType != null) {
      result
        ..add('feeType')
        ..add(serializers.serialize(object.feeType,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Course deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.studyNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'feeType':
          result.feeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'fee_currency':
          result.feeCurrency.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CourseSale)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CourseSale extends CourseSale {
  @override
  final String currency;
  @override
  final String price;

  factory _$CourseSale([void Function(CourseSaleBuilder) updates]) =>
      (new CourseSaleBuilder()..update(updates)).build();

  _$CourseSale._({this.currency, this.price}) : super._() {
    if (currency == null) {
      throw new BuiltValueNullFieldError('CourseSale', 'currency');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('CourseSale', 'price');
    }
  }

  @override
  CourseSale rebuild(void Function(CourseSaleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseSaleBuilder toBuilder() => new CourseSaleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourseSale &&
        currency == other.currency &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, currency.hashCode), price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseSale')
          ..add('currency', currency)
          ..add('price', price))
        .toString();
  }
}

class CourseSaleBuilder implements Builder<CourseSale, CourseSaleBuilder> {
  _$CourseSale _$v;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  CourseSaleBuilder();

  CourseSaleBuilder get _$this {
    if (_$v != null) {
      _currency = _$v.currency;
      _price = _$v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseSale other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CourseSale;
  }

  @override
  void update(void Function(CourseSaleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseSale build() {
    final _$result =
        _$v ?? new _$CourseSale._(currency: currency, price: price);
    replace(_$result);
    return _$result;
  }
}

class _$Course extends Course {
  @override
  final int id;
  @override
  final String name;
  @override
  final String cover;
  @override
  final int studyNum;
  @override
  final int feeType;
  @override
  final BuiltList<CourseSale> feeCurrency;
  int __displayStudyNum;
  String __imageUrl;
  String __displayFirstSalePrice;
  String __displayFirstSaleCurrency;

  factory _$Course([void Function(CourseBuilder) updates]) =>
      (new CourseBuilder()..update(updates)).build();

  _$Course._(
      {this.id,
      this.name,
      this.cover,
      this.studyNum,
      this.feeType,
      this.feeCurrency})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Course', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Course', 'name');
    }
    if (cover == null) {
      throw new BuiltValueNullFieldError('Course', 'cover');
    }
    if (feeCurrency == null) {
      throw new BuiltValueNullFieldError('Course', 'feeCurrency');
    }
  }

  @override
  int get displayStudyNum => __displayStudyNum ??= super.displayStudyNum;

  @override
  String get imageUrl => __imageUrl ??= super.imageUrl;

  @override
  String get displayFirstSalePrice =>
      __displayFirstSalePrice ??= super.displayFirstSalePrice;

  @override
  String get displayFirstSaleCurrency =>
      __displayFirstSaleCurrency ??= super.displayFirstSaleCurrency;

  @override
  Course rebuild(void Function(CourseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseBuilder toBuilder() => new CourseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Course &&
        id == other.id &&
        name == other.name &&
        cover == other.cover &&
        studyNum == other.studyNum &&
        feeType == other.feeType &&
        feeCurrency == other.feeCurrency;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), cover.hashCode),
                studyNum.hashCode),
            feeType.hashCode),
        feeCurrency.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Course')
          ..add('id', id)
          ..add('name', name)
          ..add('cover', cover)
          ..add('studyNum', studyNum)
          ..add('feeType', feeType)
          ..add('feeCurrency', feeCurrency))
        .toString();
  }
}

class CourseBuilder implements Builder<Course, CourseBuilder> {
  _$Course _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  int _studyNum;
  int get studyNum => _$this._studyNum;
  set studyNum(int studyNum) => _$this._studyNum = studyNum;

  int _feeType;
  int get feeType => _$this._feeType;
  set feeType(int feeType) => _$this._feeType = feeType;

  ListBuilder<CourseSale> _feeCurrency;
  ListBuilder<CourseSale> get feeCurrency =>
      _$this._feeCurrency ??= new ListBuilder<CourseSale>();
  set feeCurrency(ListBuilder<CourseSale> feeCurrency) =>
      _$this._feeCurrency = feeCurrency;

  CourseBuilder();

  CourseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _cover = _$v.cover;
      _studyNum = _$v.studyNum;
      _feeType = _$v.feeType;
      _feeCurrency = _$v.feeCurrency?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Course other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Course;
  }

  @override
  void update(void Function(CourseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Course build() {
    _$Course _$result;
    try {
      _$result = _$v ??
          new _$Course._(
              id: id,
              name: name,
              cover: cover,
              studyNum: studyNum,
              feeType: feeType,
              feeCurrency: feeCurrency.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'feeCurrency';
        feeCurrency.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Course', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
