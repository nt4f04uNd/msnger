import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';
import 'package:msnger/msnger.dart';

final apiManagerProvider = Provider(
  (ref) => Api(
    ref.watch(authStateProvider.notifier),
  ),
);

class Api {
  final AuthStateHolder _authStateHolder;

  Api(this._authStateHolder);

  ClientChannel? _apiChannel;
  ClientChannel? _messageChannel;
  ApiServiceClient? _apiServiceClient;
  AuthServiceClient? _authServiceClient;
  MessageServiceClient? _messageServiceClient;

  void init() {
    if (_apiChannel == null) {
      _apiChannel = ClientChannel(
        Config.apiConfig.url,
        port: Config.apiConfig.port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      _messageChannel = ClientChannel(
        Config.messageConfig.url,
        port: Config.messageConfig.port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      _apiServiceClient = ApiServiceClient(_apiChannel!);
      _authServiceClient = AuthServiceClient(_apiChannel!);
      _messageServiceClient = MessageServiceClient(_messageChannel!);
    }
  }

  void dispose() {
    _apiChannel?.shutdown();
    _apiChannel = null;
    _messageChannel?.shutdown();
    _messageChannel = null;
    _apiServiceClient = null;
    _authServiceClient = null;
    _messageServiceClient = null;
  }

  CallOptions _getAuthedCallOptions() => CallOptions(
        metadata: {
          'Authorization': _authStateHolder.token.accessToken,
        },
      );

  Future<TokenResponse> login({
    required String username,
    required String password,
  }) {
    return _authServiceClient!.login(
      LoginRequest()
        ..username = username
        ..password = password,
    );
  }

  Future<MessageResponse> sendMessage({
    required String message,
    String? userId,
    String? chatId,
  }) {
    assert(userId != null || chatId != null);
    final request = MessageRequest()..message = message;
    if (userId != null) {
      request.userId = userId;
    }
    if (chatId != null) {
      request.roomId = chatId;
    }
    return _apiServiceClient!.sendMessage(
      request,
      options: _getAuthedCallOptions(),
    );
  }

  Future<ListRoomsResponse> listRooms({required String? nextToken}) async {
    final request = ListRoomsRequest()..pageSize = 20;
    if (nextToken != null) {
      request.nextToken = StringValue()..value = nextToken;
    }
    return _apiServiceClient!.listRooms(
      request,
      options: _getAuthedCallOptions(),
    );
  }

  Future<ListMessagesResponse> listMessages({
    required Uuid chatId,
    String? nextToken,
  }) async {
    final request = ListMessagesRequest()
      ..chatId = chatId
      ..pageSize = 50;
    if (nextToken != null) {
      request.nextToken = StringValue()..value = nextToken;
    }
    return _apiServiceClient!.listMessages(
      request,
      options: _getAuthedCallOptions(),
    );
  }

  Stream<MessageStreamResponse> getMessagesStream() {
    return _messageServiceClient!.getMessages(
      Empty(),
      options: _getAuthedCallOptions(),
    );
  }
}
