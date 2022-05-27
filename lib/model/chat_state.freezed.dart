// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  Map<String, ChatRoomState> get rooms => throw _privateConstructorUsedError;
  String? get nextToken => throw _privateConstructorUsedError;
  LoadingState get loadingState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, ChatRoomState> rooms,
      String? nextToken,
      LoadingState loadingState});

  $LoadingStateCopyWith<$Res> get loadingState;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? rooms = freezed,
    Object? nextToken = freezed,
    Object? loadingState = freezed,
  }) {
    return _then(_value.copyWith(
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Map<String, ChatRoomState>,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      loadingState: loadingState == freezed
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
    ));
  }

  @override
  $LoadingStateCopyWith<$Res> get loadingState {
    return $LoadingStateCopyWith<$Res>(_value.loadingState, (value) {
      return _then(_value.copyWith(loadingState: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, ChatRoomState> rooms,
      String? nextToken,
      LoadingState loadingState});

  @override
  $LoadingStateCopyWith<$Res> get loadingState;
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, (v) => _then(v as _$_ChatState));

  @override
  _$_ChatState get _value => super._value as _$_ChatState;

  @override
  $Res call({
    Object? rooms = freezed,
    Object? nextToken = freezed,
    Object? loadingState = freezed,
  }) {
    return _then(_$_ChatState(
      rooms: rooms == freezed
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Map<String, ChatRoomState>,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      loadingState: loadingState == freezed
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
    ));
  }
}

/// @nodoc

class _$_ChatState extends _ChatState {
  const _$_ChatState(
      {final Map<String, ChatRoomState> rooms = const {},
      this.nextToken,
      this.loadingState = const LoadingState()})
      : _rooms = rooms,
        super._();

  final Map<String, ChatRoomState> _rooms;
  @override
  @JsonKey()
  Map<String, ChatRoomState> get rooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rooms);
  }

  @override
  final String? nextToken;
  @override
  @JsonKey()
  final LoadingState loadingState;

  @override
  String toString() {
    return 'ChatState(rooms: $rooms, nextToken: $nextToken, loadingState: $loadingState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            const DeepCollectionEquality().equals(other.nextToken, nextToken) &&
            const DeepCollectionEquality()
                .equals(other.loadingState, loadingState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rooms),
      const DeepCollectionEquality().hash(nextToken),
      const DeepCollectionEquality().hash(loadingState));

  @JsonKey(ignore: true)
  @override
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);
}

abstract class _ChatState extends ChatState {
  const factory _ChatState(
      {final Map<String, ChatRoomState> rooms,
      final String? nextToken,
      final LoadingState loadingState}) = _$_ChatState;
  const _ChatState._() : super._();

  @override
  Map<String, ChatRoomState> get rooms => throw _privateConstructorUsedError;
  @override
  String? get nextToken => throw _privateConstructorUsedError;
  @override
  LoadingState get loadingState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatRoomState {
  Room get room => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  String? get nextToken => throw _privateConstructorUsedError;
  LoadingState get loadingState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoomStateCopyWith<ChatRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomStateCopyWith(
          ChatRoomState value, $Res Function(ChatRoomState) then) =
      _$ChatRoomStateCopyWithImpl<$Res>;
  $Res call(
      {Room room,
      List<Message> messages,
      String? nextToken,
      LoadingState loadingState});

  $LoadingStateCopyWith<$Res> get loadingState;
}

/// @nodoc
class _$ChatRoomStateCopyWithImpl<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  _$ChatRoomStateCopyWithImpl(this._value, this._then);

  final ChatRoomState _value;
  // ignore: unused_field
  final $Res Function(ChatRoomState) _then;

  @override
  $Res call({
    Object? room = freezed,
    Object? messages = freezed,
    Object? nextToken = freezed,
    Object? loadingState = freezed,
  }) {
    return _then(_value.copyWith(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      loadingState: loadingState == freezed
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
    ));
  }

  @override
  $LoadingStateCopyWith<$Res> get loadingState {
    return $LoadingStateCopyWith<$Res>(_value.loadingState, (value) {
      return _then(_value.copyWith(loadingState: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatRoomStateCopyWith<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  factory _$$_ChatRoomStateCopyWith(
          _$_ChatRoomState value, $Res Function(_$_ChatRoomState) then) =
      __$$_ChatRoomStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Room room,
      List<Message> messages,
      String? nextToken,
      LoadingState loadingState});

  @override
  $LoadingStateCopyWith<$Res> get loadingState;
}

/// @nodoc
class __$$_ChatRoomStateCopyWithImpl<$Res>
    extends _$ChatRoomStateCopyWithImpl<$Res>
    implements _$$_ChatRoomStateCopyWith<$Res> {
  __$$_ChatRoomStateCopyWithImpl(
      _$_ChatRoomState _value, $Res Function(_$_ChatRoomState) _then)
      : super(_value, (v) => _then(v as _$_ChatRoomState));

  @override
  _$_ChatRoomState get _value => super._value as _$_ChatRoomState;

  @override
  $Res call({
    Object? room = freezed,
    Object? messages = freezed,
    Object? nextToken = freezed,
    Object? loadingState = freezed,
  }) {
    return _then(_$_ChatRoomState(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      loadingState: loadingState == freezed
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
    ));
  }
}

/// @nodoc

class _$_ChatRoomState extends _ChatRoomState {
  const _$_ChatRoomState(
      {required this.room,
      final List<Message> messages = const [],
      this.nextToken,
      this.loadingState = const LoadingState()})
      : _messages = messages,
        super._();

  @override
  final Room room;
  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? nextToken;
  @override
  @JsonKey()
  final LoadingState loadingState;

  @override
  String toString() {
    return 'ChatRoomState(room: $room, messages: $messages, nextToken: $nextToken, loadingState: $loadingState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoomState &&
            const DeepCollectionEquality().equals(other.room, room) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other.nextToken, nextToken) &&
            const DeepCollectionEquality()
                .equals(other.loadingState, loadingState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(room),
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(nextToken),
      const DeepCollectionEquality().hash(loadingState));

  @JsonKey(ignore: true)
  @override
  _$$_ChatRoomStateCopyWith<_$_ChatRoomState> get copyWith =>
      __$$_ChatRoomStateCopyWithImpl<_$_ChatRoomState>(this, _$identity);
}

abstract class _ChatRoomState extends ChatRoomState {
  const factory _ChatRoomState(
      {required final Room room,
      final List<Message> messages,
      final String? nextToken,
      final LoadingState loadingState}) = _$_ChatRoomState;
  const _ChatRoomState._() : super._();

  @override
  Room get room => throw _privateConstructorUsedError;
  @override
  List<Message> get messages => throw _privateConstructorUsedError;
  @override
  String? get nextToken => throw _privateConstructorUsedError;
  @override
  LoadingState get loadingState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomStateCopyWith<_$_ChatRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
