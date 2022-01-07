///
//  Generated code. Do not modify.
//  source: device_status.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use deviceStatusDescriptor instead')
const DeviceStatus$json = const {
  '1': 'DeviceStatus',
  '2': const [
    const {'1': 'isLastCommandValid', '3': 1, '4': 1, '5': 8, '10': 'isLastCommandValid'},
    const {'1': 'isDeviceReady', '3': 2, '4': 1, '5': 8, '10': 'isDeviceReady'},
  ],
};

/// Descriptor for `DeviceStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceStatusDescriptor = $convert.base64Decode('CgxEZXZpY2VTdGF0dXMSLgoSaXNMYXN0Q29tbWFuZFZhbGlkGAEgASgIUhJpc0xhc3RDb21tYW5kVmFsaWQSJAoNaXNEZXZpY2VSZWFkeRgCIAEoCFINaXNEZXZpY2VSZWFkeQ==');
