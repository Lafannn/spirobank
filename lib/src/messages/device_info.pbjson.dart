///
//  Generated code. Do not modify.
//  source: device_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use atsStandardDescriptor instead')
const AtsStandard$json = const {
  '1': 'AtsStandard',
  '2': const [
    const {'1': 'ATS_2015', '2': 0},
    const {'1': 'ATS_2019', '2': 1},
  ],
};

/// Descriptor for `AtsStandard`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List atsStandardDescriptor = $convert.base64Decode('CgtBdHNTdGFuZGFyZBIMCghBVFNfMjAxNRAAEgwKCEFUU18yMDE5EAE=');
@$core.Deprecated('Use checkStateDescriptor instead')
const CheckState$json = const {
  '1': 'CheckState',
  '2': const [
    const {'1': 'ENABLED', '2': 0},
    const {'1': 'DISABLED', '2': 1},
    const {'1': 'REQUEST_TIMED_OUT', '2': 2},
    const {'1': 'FIRMWARE_UPDATE_NEEDED', '2': 3},
    const {'1': 'TEST_NOT_SUPPORTED', '2': 4},
  ],
};

/// Descriptor for `CheckState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List checkStateDescriptor = $convert.base64Decode('CgpDaGVja1N0YXRlEgsKB0VOQUJMRUQQABIMCghESVNBQkxFRBABEhUKEVJFUVVFU1RfVElNRURfT1VUEAISGgoWRklSTVdBUkVfVVBEQVRFX05FRURFRBADEhYKElRFU1RfTk9UX1NVUFBPUlRFRBAE');
@$core.Deprecated('Use deviceInfoDescriptor instead')
const DeviceInfo$json = const {
  '1': 'DeviceInfo',
  '2': const [
    const {'1': 'deviceId', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'protocol', '3': 3, '4': 1, '5': 9, '10': 'protocol'},
    const {'1': 'serialNumber', '3': 4, '4': 1, '5': 9, '10': 'serialNumber'},
    const {'1': 'rssi', '3': 5, '4': 1, '5': 3, '10': 'rssi'},
    const {'1': 'currentTestType', '3': 6, '4': 1, '5': 3, '10': 'currentTestType'},
    const {'1': 'advertisementData', '3': 7, '4': 1, '5': 9, '10': 'advertisementData'},
    const {'1': 'nameCached', '3': 8, '4': 1, '5': 9, '10': 'nameCached'},
    const {'1': 'shortName', '3': 9, '4': 1, '5': 9, '10': 'shortName'},
    const {'1': 'bootID', '3': 10, '4': 1, '5': 9, '10': 'bootID'},
    const {'1': 'atsStandardSupported', '3': 11, '4': 1, '5': 14, '6': '.AtsStandard', '10': 'atsStandardSupported'},
    const {'1': 'fvcPlusEnableStatus', '3': 12, '4': 1, '5': 14, '6': '.CheckState', '10': 'fvcPlusEnableStatus'},
    const {'1': 'vcEnableSatus', '3': 13, '4': 1, '5': 14, '6': '.CheckState', '10': 'vcEnableSatus'},
  ],
};

/// Descriptor for `DeviceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoDescriptor = $convert.base64Decode('CgpEZXZpY2VJbmZvEhoKCGRldmljZUlkGAEgASgJUghkZXZpY2VJZBISCgRuYW1lGAIgASgJUgRuYW1lEhoKCHByb3RvY29sGAMgASgJUghwcm90b2NvbBIiCgxzZXJpYWxOdW1iZXIYBCABKAlSDHNlcmlhbE51bWJlchISCgRyc3NpGAUgASgDUgRyc3NpEigKD2N1cnJlbnRUZXN0VHlwZRgGIAEoA1IPY3VycmVudFRlc3RUeXBlEiwKEWFkdmVydGlzZW1lbnREYXRhGAcgASgJUhFhZHZlcnRpc2VtZW50RGF0YRIeCgpuYW1lQ2FjaGVkGAggASgJUgpuYW1lQ2FjaGVkEhwKCXNob3J0TmFtZRgJIAEoCVIJc2hvcnROYW1lEhYKBmJvb3RJRBgKIAEoCVIGYm9vdElEEkAKFGF0c1N0YW5kYXJkU3VwcG9ydGVkGAsgASgOMgwuQXRzU3RhbmRhcmRSFGF0c1N0YW5kYXJkU3VwcG9ydGVkEj0KE2Z2Y1BsdXNFbmFibGVTdGF0dXMYDCABKA4yCy5DaGVja1N0YXRlUhNmdmNQbHVzRW5hYmxlU3RhdHVzEjEKDXZjRW5hYmxlU2F0dXMYDSABKA4yCy5DaGVja1N0YXRlUg12Y0VuYWJsZVNhdHVz');
