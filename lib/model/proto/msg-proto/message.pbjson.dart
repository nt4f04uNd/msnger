///
//  Generated code. Do not modify.
//  source: msg-proto/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageDeliveryDescriptor instead')
const MessageDelivery$json = const {
  '1': 'MessageDelivery',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.model.Message', '10': 'message'},
    const {'1': 'userIds', '3': 2, '4': 3, '5': 9, '10': 'userIds'},
  ],
};

/// Descriptor for `MessageDelivery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDeliveryDescriptor = $convert.base64Decode('Cg9NZXNzYWdlRGVsaXZlcnkSKAoHbWVzc2FnZRgBIAEoCzIOLm1vZGVsLk1lc3NhZ2VSB21lc3NhZ2USGAoHdXNlcklkcxgCIAMoCVIHdXNlcklkcw==');
@$core.Deprecated('Use messageStreamResponseDescriptor instead')
const MessageStreamResponse$json = const {
  '1': 'MessageStreamResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.model.Message', '10': 'message'},
  ],
};

/// Descriptor for `MessageStreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageStreamResponseDescriptor = $convert.base64Decode('ChVNZXNzYWdlU3RyZWFtUmVzcG9uc2USKAoHbWVzc2FnZRgBIAEoCzIOLm1vZGVsLk1lc3NhZ2VSB21lc3NhZ2U=');
