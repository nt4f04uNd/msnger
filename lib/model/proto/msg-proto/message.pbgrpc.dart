///
//  Generated code. Do not modify.
//  source: msg-proto/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../google/protobuf/empty.pb.dart' as $2;
import 'message.pb.dart' as $3;
export 'message.pb.dart';

class MessageServiceClient extends $grpc.Client {
  static final _$getMessages =
      $grpc.ClientMethod<$2.Empty, $3.MessageStreamResponse>(
          '/message.MessageService/GetMessages',
          ($2.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.MessageStreamResponse.fromBuffer(value));

  MessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$3.MessageStreamResponse> getMessages($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getMessages, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class MessageServiceBase extends $grpc.Service {
  $core.String get $name => 'message.MessageService';

  MessageServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Empty, $3.MessageStreamResponse>(
        'GetMessages',
        getMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($3.MessageStreamResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$3.MessageStreamResponse> getMessages_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async* {
    yield* getMessages(call, await request);
  }

  $async.Stream<$3.MessageStreamResponse> getMessages(
      $grpc.ServiceCall call, $2.Empty request);
}
