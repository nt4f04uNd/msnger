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

  void init() {
    if (_apiChannel == null) {
      _apiChannel = ClientChannel(
        Config.apiConfig.url,
        port: Config.apiConfig.port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      _apiServiceClient = ApiServiceClient(_apiChannel!);
      _authServiceClient = AuthServiceClient(_apiChannel!);
    }
  }

  void dispose() {
    _apiChannel?.shutdown();
    _apiChannel = null;
    _messageChannel?.shutdown();
    _messageChannel = null;
    _apiServiceClient = null;
    _authServiceClient = null;
  }

  CallOptions _getAuthedCallOptions() => CallOptions(
        metadata: {
          'Authorization': _authStateHolder.token.accessToken,
        },
      );

  Future<TokenResponse> login(String username, String password) {
    return _authServiceClient!.login(
      LoginRequest()
        ..username = username
        ..password = password,
    );
  }

  Future<ListRoomsResponse> listRooms(String? pageToken) {
    final pageTokenV = StringValue();
    if (pageToken != null) {
      pageTokenV.value = pageToken;
    }
    return _apiServiceClient!.listRooms(
      ListRoomsRequest()
        ..pageSize = 20
        ..pageToken = pageTokenV,
      options: _getAuthedCallOptions(),
    );
  }

  void initMessageChannel() {
    _messageChannel = ClientChannel(
      Config.messageConfig.url,
      port: Config.messageConfig.port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
  }
}
