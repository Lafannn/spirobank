///
//  Generated code. Do not modify.
//  source: device.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use deviceDescriptor instead')
const Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'deviceStatus', '3': 1, '4': 1, '5': 11, '6': '.DeviceStatus', '10': 'deviceStatus'},
    const {'1': 'deviceInfo', '3': 2, '4': 1, '5': 11, '6': '.DeviceInfo', '10': 'deviceInfo'},
    const {'1': 'batteryLevel', '3': 3, '4': 1, '5': 5, '10': 'batteryLevel'},
    const {'1': 'volumeStep', '3': 4, '4': 1, '5': 5, '10': 'volumeStep'},
    const {'1': 'softwareVersion', '3': 5, '4': 1, '5': 9, '10': 'softwareVersion'},
    const {'1': 'bluetoothVersion', '3': 6, '4': 1, '5': 9, '10': 'bluetoothVersion'},
  ],
};

/// Descriptor for `Device`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptor = $convert.base64Decode('CgZEZXZpY2USMQoMZGV2aWNlU3RhdHVzGAEgASgLMg0uRGV2aWNlU3RhdHVzUgxkZXZpY2VTdGF0dXMSKwoKZGV2aWNlSW5mbxgCIAEoCzILLkRldmljZUluZm9SCmRldmljZUluZm8SIgoMYmF0dGVyeUxldmVsGAMgASgFUgxiYXR0ZXJ5TGV2ZWwSHgoKdm9sdW1lU3RlcBgEIAEoBVIKdm9sdW1lU3RlcBIoCg9zb2Z0d2FyZVZlcnNpb24YBSABKAlSD3NvZnR3YXJlVmVyc2lvbhIqChBibHVldG9vdGhWZXJzaW9uGAYgASgJUhBibHVldG9vdGhWZXJzaW9u');
