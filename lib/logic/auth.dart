import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';
import 'package:msnger/msnger.dart';

final authStateProvider = StateNotifierProvider<AuthStateHolder, AuthState>(
  (ref) => AuthStateHolder(),
);
final authManagerProvider = Provider(
  (ref) => AuthManager(
    ref.watch(apiManagerProvider),
    ref.watch(authStateProvider.notifier),
    ref.watch(chatManagerProvider),
  ),
);

class AuthStateHolder extends StateNotifier<AuthState> {
  AuthStateHolder() : super(const AuthState());

  bool get loggedIn => state.token != null;
  Token get token => state.token!;

  void setToken(Token? token) {
    state = state.copyWith(token: token);
  }
}

class AuthManager {
  final Api _api;
  final AuthStateHolder _authState;
  final ChatManager _chatManager;

  AuthManager(
    this._api,
    this._authState,
    this._chatManager,
  );

  RemoveListener? _removeListener;

  void init() {
    final persistedToken = Prefs.token.get();
    _authState.setToken(persistedToken);
    _authState.addListener(_handleTokenChange);
  }

  void dispose() {
    _removeListener?.call();
  }

  void _handleTokenChange(AuthState state) {
    if (state.token != null) {
      _chatManager.init();
    } else {
      _chatManager.dispose();
    }
  }

  Future<LoginResult> login({
    required String username,
    required String password,
  }) async {
    try {
      final res = await _api.login(
        username: username,
        password: password,
      );
      _authState.setToken(res.token);
      Prefs.token.set(res.token);
      return LoginResult.success;
    } on GrpcError catch (ex) {
      if (ex.code == StatusCode.notFound) {
        return LoginResult.incorrectData;
      }
      return LoginResult.error;
    } catch (ex) {
      return LoginResult.error;
    }
  }

  void logout() {
    Prefs.token.delete();
    _authState.setToken(null);
  }
}

enum LoginResult {
  success,
  incorrectData,
  error,
}
