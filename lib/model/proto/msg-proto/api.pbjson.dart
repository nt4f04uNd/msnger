///
//  Generated code. Do not modify.
//  source: msg-proto/api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createRoomRequestDescriptor instead')
const CreateRoomRequest$json = const {
  '1': 'CreateRoomRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'user_ids', '3': 2, '4': 3, '5': 9, '10': 'userIds'},
  ],
};

/// Descriptor for `CreateRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVSb29tUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhkKCHVzZXJfaWRzGAIgAygJUgd1c2VySWRz');
@$core.Deprecated('Use listRoomsRequestDescriptor instead')
const ListRoomsRequest$json = const {
  '1': 'ListRoomsRequest',
  '2': const [
    const {'1': 'next_token', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'nextToken'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `ListRoomsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomsRequestDescriptor = $convert.base64Decode('ChBMaXN0Um9vbXNSZXF1ZXN0EjsKCm5leHRfdG9rZW4YASABKAsyHC5nb29nbGUucHJvdG9idWYuU3RyaW5nVmFsdWVSCW5leHRUb2tlbhIbCglwYWdlX3NpemUYAiABKAVSCHBhZ2VTaXpl');
@$core.Deprecated('Use messageRequestDescriptor instead')
const MessageRequest$json = const {
  '1': 'MessageRequest',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'userId'},
    const {'1': 'room_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'roomId'},
  ],
  '8': const [
    const {'1': 'recipient'},
  ],
};

/// Descriptor for `MessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageRequestDescriptor = $convert.base64Decode('Cg5NZXNzYWdlUmVxdWVzdBIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEhkKB3VzZXJfaWQYAiABKAlIAFIGdXNlcklkEhkKB3Jvb21faWQYAyABKAlIAFIGcm9vbUlkQgsKCXJlY2lwaWVudA==');
@$core.Deprecated('Use listMessagesRequestDescriptor instead')
const ListMessagesRequest$json = const {
  '1': 'ListMessagesRequest',
  '2': const [
    const {'1': 'next_token', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'nextToken'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'chat_id', '3': 3, '4': 1, '5': 9, '10': 'chatId'},
  ],
};

/// Descriptor for `ListMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMessagesRequestDescriptor = $convert.base64Decode('ChNMaXN0TWVzc2FnZXNSZXF1ZXN0EjsKCm5leHRfdG9rZW4YASABKAsyHC5nb29nbGUucHJvdG9idWYuU3RyaW5nVmFsdWVSCW5leHRUb2tlbhIbCglwYWdlX3NpemUYAiABKAVSCHBhZ2VTaXplEhcKB2NoYXRfaWQYAyABKAlSBmNoYXRJZA==');
@$core.Deprecated('Use listMessagesResponseDescriptor instead')
const ListMessagesResponse$json = const {
  '1': 'ListMessagesResponse',
  '2': const [
    const {'1': 'next_token', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'nextToken'},
    const {'1': 'messages', '3': 2, '4': 3, '5': 11, '6': '.model.Message', '10': 'messages'},
  ],
};

/// Descriptor for `ListMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMessagesResponseDescriptor = $convert.base64Decode('ChRMaXN0TWVzc2FnZXNSZXNwb25zZRI7CgpuZXh0X3Rva2VuGAEgASgLMhwuZ29vZ2xlLnByb3RvYnVmLlN0cmluZ1ZhbHVlUgluZXh0VG9rZW4SKgoIbWVzc2FnZXMYAiADKAsyDi5tb2RlbC5NZXNzYWdlUghtZXNzYWdlcw==');
@$core.Deprecated('Use messageResponseDescriptor instead')
const MessageResponse$json = const {
  '1': 'MessageResponse',
  '2': const [
    const {'1': 'room_id', '3': 1, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.model.Message', '10': 'message'},
  ],
};

/// Descriptor for `MessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageResponseDescriptor = $convert.base64Decode('Cg9NZXNzYWdlUmVzcG9uc2USFwoHcm9vbV9pZBgBIAEoCVIGcm9vbUlkEigKB21lc3NhZ2UYAiABKAsyDi5tb2RlbC5NZXNzYWdlUgdtZXNzYWdl');
@$core.Deprecated('Use listRoomsResponseDescriptor instead')
const ListRoomsResponse$json = const {
  '1': 'ListRoomsResponse',
  '2': const [
    const {'1': 'next_token', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'nextToken'},
    const {'1': 'rooms', '3': 2, '4': 3, '5': 11, '6': '.model.Room', '10': 'rooms'},
  ],
};

/// Descriptor for `ListRoomsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomsResponseDescriptor = $convert.base64Decode('ChFMaXN0Um9vbXNSZXNwb25zZRI7CgpuZXh0X3Rva2VuGAEgASgLMhwuZ29vZ2xlLnByb3RvYnVmLlN0cmluZ1ZhbHVlUgluZXh0VG9rZW4SIQoFcm9vbXMYAiADKAsyCy5tb2RlbC5Sb29tUgVyb29tcw==');
@$core.Deprecated('Use createRoomStatusDescriptor instead')
const CreateRoomStatus$json = const {
  '1': 'CreateRoomStatus',
  '2': const [
    const {'1': 'room_id', '3': 1, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'users', '3': 3, '4': 3, '5': 9, '10': 'users'},
  ],
};

/// Descriptor for `CreateRoomStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomStatusDescriptor = $convert.base64Decode('ChBDcmVhdGVSb29tU3RhdHVzEhcKB3Jvb21faWQYASABKAlSBnJvb21JZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBXVzZXJzGAMgAygJUgV1c2Vycw==');
