// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  int get statusCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) server,
    required TResult Function(String message, int statusCode) storage,
    required TResult Function(String message, int statusCode) noConnection,
    required TResult Function(Object rawFailure, int statusCode) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? server,
    TResult? Function(String message, int statusCode)? storage,
    TResult? Function(String message, int statusCode)? noConnection,
    TResult? Function(Object rawFailure, int statusCode)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? server,
    TResult Function(String message, int statusCode)? storage,
    TResult Function(String message, int statusCode)? noConnection,
    TResult Function(Object rawFailure, int statusCode)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_NoConnectionFailure value) noConnection,
    required TResult Function(_RawFailure value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_NoConnectionFailure value)? noConnection,
    TResult? Function(_RawFailure value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_NoConnectionFailure value)? noConnection,
    TResult Function(_RawFailure value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({int statusCode});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl extends _ServerFailure {
  const _$ServerFailureImpl({required this.message, required this.statusCode})
      : super._();

  @override
  final String message;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'Failure.server(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) server,
    required TResult Function(String message, int statusCode) storage,
    required TResult Function(String message, int statusCode) noConnection,
    required TResult Function(Object rawFailure, int statusCode) raw,
  }) {
    return server(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? server,
    TResult? Function(String message, int statusCode)? storage,
    TResult? Function(String message, int statusCode)? noConnection,
    TResult? Function(Object rawFailure, int statusCode)? raw,
  }) {
    return server?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? server,
    TResult Function(String message, int statusCode)? storage,
    TResult Function(String message, int statusCode)? noConnection,
    TResult Function(Object rawFailure, int statusCode)? raw,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_NoConnectionFailure value) noConnection,
    required TResult Function(_RawFailure value) raw,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_NoConnectionFailure value)? noConnection,
    TResult? Function(_RawFailure value)? raw,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_NoConnectionFailure value)? noConnection,
    TResult Function(_RawFailure value)? raw,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure extends Failure {
  const factory _ServerFailure(
      {required final String message,
      required final int statusCode}) = _$ServerFailureImpl;
  const _ServerFailure._() : super._();

  String get message;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$StorageFailureImplCopyWith(_$StorageFailureImpl value,
          $Res Function(_$StorageFailureImpl) then) =
      __$$StorageFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class __$$StorageFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$StorageFailureImpl>
    implements _$$StorageFailureImplCopyWith<$Res> {
  __$$StorageFailureImplCopyWithImpl(
      _$StorageFailureImpl _value, $Res Function(_$StorageFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$StorageFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StorageFailureImpl extends _StorageFailure {
  const _$StorageFailureImpl({required this.message, required this.statusCode})
      : super._();

  @override
  final String message;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'Failure.storage(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      __$$StorageFailureImplCopyWithImpl<_$StorageFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) server,
    required TResult Function(String message, int statusCode) storage,
    required TResult Function(String message, int statusCode) noConnection,
    required TResult Function(Object rawFailure, int statusCode) raw,
  }) {
    return storage(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? server,
    TResult? Function(String message, int statusCode)? storage,
    TResult? Function(String message, int statusCode)? noConnection,
    TResult? Function(Object rawFailure, int statusCode)? raw,
  }) {
    return storage?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? server,
    TResult Function(String message, int statusCode)? storage,
    TResult Function(String message, int statusCode)? noConnection,
    TResult Function(Object rawFailure, int statusCode)? raw,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_NoConnectionFailure value) noConnection,
    required TResult Function(_RawFailure value) raw,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_NoConnectionFailure value)? noConnection,
    TResult? Function(_RawFailure value)? raw,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_NoConnectionFailure value)? noConnection,
    TResult Function(_RawFailure value)? raw,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class _StorageFailure extends Failure {
  const factory _StorageFailure(
      {required final String message,
      required final int statusCode}) = _$StorageFailureImpl;
  const _StorageFailure._() : super._();

  String get message;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NoConnectionFailureImplCopyWith(_$NoConnectionFailureImpl value,
          $Res Function(_$NoConnectionFailureImpl) then) =
      __$$NoConnectionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class __$$NoConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoConnectionFailureImpl>
    implements _$$NoConnectionFailureImplCopyWith<$Res> {
  __$$NoConnectionFailureImplCopyWithImpl(_$NoConnectionFailureImpl _value,
      $Res Function(_$NoConnectionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$NoConnectionFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NoConnectionFailureImpl extends _NoConnectionFailure {
  const _$NoConnectionFailureImpl(
      {required this.message, required this.statusCode})
      : super._();

  @override
  final String message;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'Failure.noConnection(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionFailureImplCopyWith<_$NoConnectionFailureImpl> get copyWith =>
      __$$NoConnectionFailureImplCopyWithImpl<_$NoConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) server,
    required TResult Function(String message, int statusCode) storage,
    required TResult Function(String message, int statusCode) noConnection,
    required TResult Function(Object rawFailure, int statusCode) raw,
  }) {
    return noConnection(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? server,
    TResult? Function(String message, int statusCode)? storage,
    TResult? Function(String message, int statusCode)? noConnection,
    TResult? Function(Object rawFailure, int statusCode)? raw,
  }) {
    return noConnection?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? server,
    TResult Function(String message, int statusCode)? storage,
    TResult Function(String message, int statusCode)? noConnection,
    TResult Function(Object rawFailure, int statusCode)? raw,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_NoConnectionFailure value) noConnection,
    required TResult Function(_RawFailure value) raw,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_NoConnectionFailure value)? noConnection,
    TResult? Function(_RawFailure value)? raw,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_NoConnectionFailure value)? noConnection,
    TResult Function(_RawFailure value)? raw,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnectionFailure extends Failure {
  const factory _NoConnectionFailure(
      {required final String message,
      required final int statusCode}) = _$NoConnectionFailureImpl;
  const _NoConnectionFailure._() : super._();

  String get message;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionFailureImplCopyWith<_$NoConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RawFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$RawFailureImplCopyWith(
          _$RawFailureImpl value, $Res Function(_$RawFailureImpl) then) =
      __$$RawFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object rawFailure, int statusCode});
}

/// @nodoc
class __$$RawFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$RawFailureImpl>
    implements _$$RawFailureImplCopyWith<$Res> {
  __$$RawFailureImplCopyWithImpl(
      _$RawFailureImpl _value, $Res Function(_$RawFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawFailure = null,
    Object? statusCode = null,
  }) {
    return _then(_$RawFailureImpl(
      rawFailure: null == rawFailure ? _value.rawFailure : rawFailure,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RawFailureImpl extends _RawFailure {
  const _$RawFailureImpl({required this.rawFailure, required this.statusCode})
      : super._();

  @override
  final Object rawFailure;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'Failure.raw(rawFailure: $rawFailure, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawFailureImpl &&
            const DeepCollectionEquality()
                .equals(other.rawFailure, rawFailure) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rawFailure), statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawFailureImplCopyWith<_$RawFailureImpl> get copyWith =>
      __$$RawFailureImplCopyWithImpl<_$RawFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) server,
    required TResult Function(String message, int statusCode) storage,
    required TResult Function(String message, int statusCode) noConnection,
    required TResult Function(Object rawFailure, int statusCode) raw,
  }) {
    return raw(rawFailure, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? server,
    TResult? Function(String message, int statusCode)? storage,
    TResult? Function(String message, int statusCode)? noConnection,
    TResult? Function(Object rawFailure, int statusCode)? raw,
  }) {
    return raw?.call(rawFailure, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? server,
    TResult Function(String message, int statusCode)? storage,
    TResult Function(String message, int statusCode)? noConnection,
    TResult Function(Object rawFailure, int statusCode)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(rawFailure, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_NoConnectionFailure value) noConnection,
    required TResult Function(_RawFailure value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_NoConnectionFailure value)? noConnection,
    TResult? Function(_RawFailure value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_NoConnectionFailure value)? noConnection,
    TResult Function(_RawFailure value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }
}

abstract class _RawFailure extends Failure {
  const factory _RawFailure(
      {required final Object rawFailure,
      required final int statusCode}) = _$RawFailureImpl;
  const _RawFailure._() : super._();

  Object get rawFailure;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$RawFailureImplCopyWith<_$RawFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
