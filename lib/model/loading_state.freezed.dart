// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadingState {
  bool get loading => throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
  $Res call({bool loading, Exception? error});
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._value, this._then);

  final LoadingState _value;
  // ignore: unused_field
  final $Res Function(LoadingState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res>
    implements $LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, Exception? error});
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, (v) => _then(v as _$_LoadingState));

  @override
  _$_LoadingState get _value => super._value as _$_LoadingState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_LoadingState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState({this.loading = false, this.error});

  @override
  @JsonKey()
  final bool loading;
  @override
  final Exception? error;

  @override
  String toString() {
    return 'LoadingState(loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      __$$_LoadingStateCopyWithImpl<_$_LoadingState>(this, _$identity);
}

abstract class _LoadingState implements LoadingState {
  const factory _LoadingState({final bool loading, final Exception? error}) =
      _$_LoadingState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Exception? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
