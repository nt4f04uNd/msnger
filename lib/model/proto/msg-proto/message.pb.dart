///
//  Generated code. Do not modify.
//  source: msg-proto/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $6;

class MessageDelivery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageDelivery', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'message'), createEmptyInstance: create)
    ..aOM<$6.Message>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: $6.Message.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIds', protoName: 'userIds')
    ..hasRequiredFields = false
  ;

  MessageDelivery._() : super();
  factory MessageDelivery({
    $6.Message? message,
    $core.Iterable<$core.String>? userIds,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (userIds != null) {
      _result.userIds.addAll(userIds);
    }
    return _result;
  }
  factory MessageDelivery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageDelivery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageDelivery clone() => MessageDelivery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageDelivery copyWith(void Function(MessageDelivery) updates) => super.copyWith((message) => updates(message as MessageDelivery)) as MessageDelivery; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageDelivery create() => MessageDelivery._();
  MessageDelivery createEmptyInstance() => create();
  static $pb.PbList<MessageDelivery> createRepeated() => $pb.PbList<MessageDelivery>();
  @$core.pragma('dart2js:noInline')
  static MessageDelivery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageDelivery>(create);
  static MessageDelivery? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Message get message => $_getN(0);
  @$pb.TagNumber(1)
  set message($6.Message v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
  @$pb.TagNumber(1)
  $6.Message ensureMessage() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get userIds => $_getList(1);
}

class MessageStreamResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageStreamResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'message'), createEmptyInstance: create)
    ..aOM<$6.Message>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: $6.Message.create)
    ..hasRequiredFields = false
  ;

  MessageStreamResponse._() : super();
  factory MessageStreamResponse({
    $6.Message? message,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory MessageStreamResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageStreamResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageStreamResponse clone() => MessageStreamResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageStreamResponse copyWith(void Function(MessageStreamResponse) updates) => super.copyWith((message) => updates(message as MessageStreamResponse)) as MessageStreamResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageStreamResponse create() => MessageStreamResponse._();
  MessageStreamResponse createEmptyInstance() => create();
  static $pb.PbList<MessageStreamResponse> createRepeated() => $pb.PbList<MessageStreamResponse>();
  @$core.pragma('dart2js:noInline')
  static MessageStreamResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageStreamResponse>(create);
  static MessageStreamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Message get message => $_getN(0);
  @$pb.TagNumber(1)
  set message($6.Message v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
  @$pb.TagNumber(1)
  $6.Message ensureMessage() => $_ensure(0);
}

