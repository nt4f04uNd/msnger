import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msnger/msnger.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    Token? token,
  }) = _AuthState;
}
