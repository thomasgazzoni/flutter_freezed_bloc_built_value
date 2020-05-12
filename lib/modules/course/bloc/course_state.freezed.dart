// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'course_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CourseStateTearOff {
  const _$CourseStateTearOff();

  Initial call({List<Course> value = const []}) {
    return Initial(
      value: value,
    );
  }

  Loading loading() {
    return const Loading();
  }

  Success success(BuiltList<Course> value) {
    return Success(
      value,
    );
  }

  Failure failure([String message]) {
    return Failure(
      message,
    );
  }
}

// ignore: unused_element
const $CourseState = _$CourseStateTearOff();

mixin _$CourseState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Course> value), {
    @required Result loading(),
    @required Result success(BuiltList<Course> value),
    @required Result failure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Course> value), {
    Result loading(),
    Result success(BuiltList<Course> value),
    Result failure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Initial value), {
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Initial value), {
    Result loading(Loading value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  });
}

abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res>;
}

class _$CourseStateCopyWithImpl<$Res> implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  final CourseState _value;
  // ignore: unused_field
  final $Res Function(CourseState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({List<Course> value});
}

class _$InitialCopyWithImpl<$Res> extends _$CourseStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(Initial(
      value: value == freezed ? _value.value : value as List<Course>,
    ));
  }
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial({this.value = const []}) : assert(value != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<Course> value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseState(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseState'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Course> value), {
    @required Result loading(),
    @required Result success(BuiltList<Course> value),
    @required Result failure(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return $default(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Course> value), {
    Result loading(),
    Result success(BuiltList<Course> value),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Initial value), {
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Initial value), {
    Result loading(Loading value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Initial implements CourseState {
  const factory Initial({List<Course> value}) = _$Initial;

  List<Course> get value;
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$CourseStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CourseState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Course> value), {
    @required Result loading(),
    @required Result success(BuiltList<Course> value),
    @required Result failure(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Course> value), {
    Result loading(),
    Result success(BuiltList<Course> value),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Initial value), {
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Initial value), {
    Result loading(Loading value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CourseState {
  const factory Loading() = _$Loading;
}

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Course> value});
}

class _$SuccessCopyWithImpl<$Res> extends _$CourseStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(Success(
      value == freezed ? _value.value : value as BuiltList<Course>,
    ));
  }
}

class _$Success with DiagnosticableTreeMixin implements Success {
  const _$Success(this.value) : assert(value != null);

  @override
  final BuiltList<Course> value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseState.success(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseState.success'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Course> value), {
    @required Result loading(),
    @required Result success(BuiltList<Course> value),
    @required Result failure(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return success(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Course> value), {
    Result loading(),
    Result success(BuiltList<Course> value),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Initial value), {
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Initial value), {
    Result loading(Loading value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CourseState {
  const factory Success(BuiltList<Course> value) = _$Success;

  BuiltList<Course> get value;
  $SuccessCopyWith<Success> get copyWith;
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$FailureCopyWithImpl<$Res> extends _$CourseStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Failure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$Failure with DiagnosticableTreeMixin implements Failure {
  const _$Failure([this.message]);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Course> value), {
    @required Result loading(),
    @required Result success(BuiltList<Course> value),
    @required Result failure(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Course> value), {
    Result loading(),
    Result success(BuiltList<Course> value),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Initial value), {
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Initial value), {
    Result loading(Loading value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements CourseState {
  const factory Failure([String message]) = _$Failure;

  String get message;
  $FailureCopyWith<Failure> get copyWith;
}
