import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:msnger/msnger.dart';

final chatStateProvider = StateNotifierProvider<ChatStateHolder, ChatState>(
  (ref) => ChatStateHolder(),
);
final chatManagerProvider = Provider(
  (ref) => ChatManager(
    ref.watch(apiManagerProvider),
    ref.watch(chatStateProvider.notifier),
  ),
);

class ChatStateHolder extends StateNotifier<ChatState> {
  ChatStateHolder() : super(const ChatState());

  bool get hasRooms => state.rooms.isNotEmpty;
  String? get nextToken => state.nextToken;
  bool get loading => state.loading;

  void setLoading(bool value) {
    state = state.copyWith(
      loadingState: state.loadingState.copyWith(loading: value),
    );
  }

  void setError(Exception error) {
    state = state.copyWith(
      loadingState: state.loadingState.copyWith(error: error),
    );
  }

  ChatRoomState? getRoom(Uuid chatId) => state.rooms[chatId];

  void setRoomLoading({
    required Uuid chatId,
    required bool loading,
  }) {
    final newRooms = Map.of(state.rooms);
    final roomState = newRooms[chatId];
    if (roomState == null) {
      return;
    }
    newRooms[chatId] = roomState.copyWith(
      loadingState: roomState.loadingState.copyWith(
        loading: loading,
      ),
    );
    state = state.copyWith(rooms: newRooms);
  }

  void addRoomMessages({
    required Uuid chatId,
    required List<Message> messages,
    NextToken? nextToken,
    bool atStart = false, // TODO: maybe better detect where to insert it?
  }) {
    final newRooms = Map.of(state.rooms);
    final roomState = newRooms[chatId];
    if (roomState == null) {
      return;
    }
    final newMessages = [
      if (atStart) ...messages,
      ...roomState.messages,
      if (!atStart) ...messages,
    ];
    newRooms[chatId] = roomState.copyWith(
      messages: newMessages,
      nextToken: nextToken,
    );
    if (nextToken != null) {
      newRooms[chatId] = newRooms[chatId]!.copyWith(nextToken: nextToken);
    }
    state = state.copyWith(rooms: newRooms);
  }

  void addRooms({
    required List<Room> rooms,
    required String? nextToken,
  }) {
    final newRooms = Map.of(state.rooms);
    for (final room in rooms) {
      newRooms[room.id] = ChatRoomState(room: room);
    }
    state = state.copyWith(
      rooms: newRooms,
      nextToken: nextToken,
    );
  }

  void deleteRoom(Room room) {
    final newRooms = Map.of(state.rooms);
    newRooms.remove(room.id);
    state = state.copyWith(rooms: newRooms);
  }

  void clear() {
    state = const ChatState();
  }
}

class ChatManager {
  final Api _api;
  final ChatStateHolder _chatState;

  ChatManager(
    this._api,
    this._chatState,
  );

  StreamController<void>? _messagesStreamController;
  StreamSubscription<MessageStreamResponse>? _messagesSubscription;

  void init() {
    if (_messagesSubscription == null) {
      _messagesStreamController = StreamController.broadcast();
      _messagesSubscription = _api
          .getMessagesStream()
          .asBroadcastStream()
          .listen(_handleMessageStream);
    }
  }

  void dispose() {
    _chatState.clear();
    _messagesStreamController?.close();
    _messagesStreamController = null;
    _messagesSubscription?.cancel();
    _messagesSubscription = null;
  }

  void _handleMessageStream(MessageStreamResponse messageStreamResponse) {
    _messagesStreamController!.add(null);
    final message = messageStreamResponse.message;
    _chatState.addRoomMessages(
      chatId: message.roomId,
      messages: [message],
      atStart: true,
    );
  }

  Stream<void> get onMessage => _messagesStreamController!.stream;

  Future<void> loadRooms() async {
    if (_chatState.loading) {
      return;
    }
    if (_chatState.hasRooms && _chatState.nextToken == null) {
      // loaded all
      return;
    }
    _chatState.setLoading(true);
    final res = await _api.listRooms(nextToken: _chatState.nextToken);
    _chatState.addRooms(
      rooms: res.rooms,
      nextToken: res.nextToken.hasValue() ? res.nextToken.value : null,
    );
    _chatState.setLoading(false);
  }

  Future<void> loadMessages(Uuid chatId) async {
    final room = _chatState.getRoom(chatId)!;
    if (room.loading) {
      return;
    }
    if (room.messages.isNotEmpty && room.nextToken == null) {
      // loaded all
      return;
    }
    _chatState.setRoomLoading(chatId: chatId, loading: true);
    final res = await _api.listMessages(
      chatId: chatId,
      nextToken: room.nextToken,
    );
    _chatState.addRoomMessages(
      chatId: chatId,
      nextToken: res.nextToken.hasValue() ? res.nextToken.value : null,
      messages: res.messages,
    );
    _chatState.setRoomLoading(chatId: chatId, loading: false);
  }

  Future<void> sendMessage({
    required String message,
    Uuid? userId,
    Uuid? chatId,
  }) async {
    final res = await _api.sendMessage(
      message: message,
      userId: userId,
      chatId: chatId,
    );
    _chatState.addRoomMessages(
      chatId: res.roomId,
      messages: [res.message],
      atStart: true,
    );
  }
}
