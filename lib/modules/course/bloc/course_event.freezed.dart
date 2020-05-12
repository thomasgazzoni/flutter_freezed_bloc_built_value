// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'course_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CourseEventTearOff {
  const _$CourseEventTearOff();

  FetchList fetchList() {
    return const FetchList();
  }

  FetchError fetchError([String message]) {
    return FetchError(
      message,
    );
  }
}

// ignore: unused_element
const $CourseEvent = _$CourseEventTearOff();

mixin _$CourseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchList(),
    @required Result fetchError(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchList(),
    Result fetchError(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchList(FetchList value),
    @required Result fetchError(FetchError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchList(FetchList value),
    Result fetchError(FetchError value),
    @required Result orElse(),
  });
}

abstract class $CourseEventCopyWith<$Res> {
  factory $CourseEventCopyWith(
          CourseEvent value, $Res Function(CourseEvent) then) =
      _$CourseEventCopyWithImpl<$Res>;
}

class _$CourseEventCopyWithImpl<$Res> implements $CourseEventCopyWith<$Res> {
  _$CourseEventCopyWithImpl(this._value, this._then);

  final CourseEvent _value;
  // ignore: unused_field
  final $Res Function(CourseEvent) _then;
}

abstract class $FetchListCopyWith<$Res> {
  factory $FetchListCopyWith(FetchList value, $Res Function(FetchList) then) =
      _$FetchListCopyWithImpl<$Res>;
}

class _$FetchListCopyWithImpl<$Res> extends _$CourseEventCopyWithImpl<$Res>
    implements $FetchListCopyWith<$Res> {
  _$FetchListCopyWithImpl(FetchList _value, $Res Function(FetchList) _then)
      : super(_value, (v) => _then(v as FetchList));

  @override
  FetchList get _value => super._value as FetchList;
}

class _$FetchList with DiagnosticableTreeMixin implements FetchList {
  const _$FetchList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvent.fetchList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CourseEvent.fetchList'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchList(),
    @required Result fetchError(String message),
  }) {
    assert(fetchList != null);
    assert(fetchError != null);
    return fetchList();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchList(),
    Result fetchError(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchList != null) {
      return fetchList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchList(FetchList value),
    @required Result fetchError(FetchError value),
  }) {
    assert(fetchList != null);
    assert(fetchError != null);
    return fetchList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchList(FetchList value),
    Result fetchError(FetchError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchList != null) {
      return fetchList(this);
    }
    return orElse();
  }
}

abstract class FetchList implements CourseEvent {
  const factory FetchList() = _$FetchList;
}

abstract class $FetchErrorCopyWith<$Res> {
  factory $FetchErrorCopyWith(
          FetchError value, $Res Function(FetchError) then) =
      _$FetchErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$FetchErrorCopyWithImpl<$Res> extends _$CourseEventCopyWithImpl<$Res>
    implements $FetchErrorCopyWith<$Res> {
  _$FetchErrorCopyWithImpl(FetchError _value, $Res Function(FetchError) _then)
      : super(_value, (v) => _then(v as FetchError));

  @override
  FetchError get _value => super._value as FetchError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(FetchError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$FetchError with DiagnosticableTreeMixin implements FetchError {
  const _$FetchError([this.message]);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvent.fetchError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseEvent.fetchError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $FetchErrorCopyWith<FetchError> get copyWith =>
      _$FetchErrorCopyWithImpl<FetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchList(),
    @required Result fetchError(String message),
  }) {
    assert(fetchList != null);
    assert(fetchError != null);
    return fetchError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchList(),
    Result fetchError(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchError != null) {
      return fetchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchList(FetchList value),
    @required Result fetchError(FetchError value),
  }) {
    assert(fetchList != null);
    assert(fetchError != null);
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchList(FetchList value),
    Result fetchError(FetchError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }
}

abstract class FetchError implements CourseEvent {
  const factory FetchError([String message]) = _$FetchError;

  String get message;
  $FetchErrorCopyWith<FetchError> get copyWith;
}
