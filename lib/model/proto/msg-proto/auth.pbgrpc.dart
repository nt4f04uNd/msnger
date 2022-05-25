///
//  Generated code. Do not modify.
//  source: msg-proto/auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $1;
export 'auth.pb.dart';

class AuthServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$1.LoginRequest, $1.TokenResponse>(
      '/auth.AuthService/Login',
      ($1.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.TokenResponse.fromBuffer(value));
  static final _$register =
      $grpc.ClientMethod<$1.RegisterRequest, $1.TokenResponse>(
          '/auth.AuthService/Register',
          ($1.RegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.TokenResponse.fromBuffer(value));
  static final _$refresh =
      $grpc.ClientMethod<$1.RefreshRequest, $1.TokenResponse>(
          '/auth.AuthService/Refresh',
          ($1.RefreshRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.TokenResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.TokenResponse> login($1.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$1.TokenResponse> register($1.RegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$1.TokenResponse> refresh($1.RefreshRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refresh, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.LoginRequest, $1.TokenResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LoginRequest.fromBuffer(value),
        ($1.TokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegisterRequest, $1.TokenResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RegisterRequest.fromBuffer(value),
        ($1.TokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RefreshRequest, $1.TokenResponse>(
        'Refresh',
        refresh_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RefreshRequest.fromBuffer(value),
        ($1.TokenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.TokenResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$1.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$1.TokenResponse> register_Pre(
      $grpc.ServiceCall call, $async.Future<$1.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$1.TokenResponse> refresh_Pre(
      $grpc.ServiceCall call, $async.Future<$1.RefreshRequest> request) async {
    return refresh(call, await request);
  }

  $async.Future<$1.TokenResponse> login(
      $grpc.ServiceCall call, $1.LoginRequest request);
  $async.Future<$1.TokenResponse> register(
      $grpc.ServiceCall call, $1.RegisterRequest request);
  $async.Future<$1.TokenResponse> refresh(
      $grpc.ServiceCall call, $1.RefreshRequest request);
}
