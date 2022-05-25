import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';
import 'package:msnger/msnger.dart';

final authStateProvider = StateNotifierProvider((ref) => AuthStateHolder());
final authManagerProvider = Provider(
  (ref) => AuthManager(
    ref.watch(apiManagerProvider),
    ref.watch(authStateProvider.notifier),
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

  AuthManager(
    this._api,
    this._authState,
  );

  Future<LoginResult> login(String username, String password) async {
    try {
      final res = await _api.login(username, password);
      _authState.setToken(res.token);
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
    _authState.setToken(null);
  }
}

enum LoginResult {
  success,
  incorrectData,
  error,
}
