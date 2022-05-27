import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msnger/msnger.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default({}) Map<Uuid, ChatRoomState> rooms,
    NextToken? nextToken,
    @Default(LoadingState()) LoadingState loadingState,
  }) = _ChatState;

  const ChatState._();

  bool get loading => loadingState.loading;
  Exception? get error => loadingState.error;
}

@freezed
class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState({
    required Room room,
    @Default([]) List<Message> messages,
    NextToken? nextToken,
    @Default(LoadingState()) LoadingState loadingState,
  }) = _ChatRoomState;

  const ChatRoomState._();

  bool get loading => loadingState.loading;
  Exception? get error => loadingState.error;
}
