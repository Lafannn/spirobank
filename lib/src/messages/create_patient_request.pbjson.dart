///
//  Generated code. Do not modify.
//  source: create_patient_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createPatientRequestDescriptor instead')
const CreatePatientRequest$json = const {
  '1': 'CreatePatientRequest',
  '2': const [
    const {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'height', '3': 2, '4': 1, '5': 2, '10': 'height'},
    const {'1': 'weight', '3': 3, '4': 1, '5': 2, '10': 'weight'},
    const {'1': 'ethnic', '3': 4, '4': 1, '5': 14, '6': '.EthnicGroup', '10': 'ethnic'},
    const {'1': 'gender', '3': 5, '4': 1, '5': 14, '6': '.Gender', '10': 'gender'},
  ],
};

/// Descriptor for `CreatePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPatientRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVQYXRpZW50UmVxdWVzdBISCgRkYXRlGAEgASgJUgRkYXRlEhYKBmhlaWdodBgCIAEoAlIGaGVpZ2h0EhYKBndlaWdodBgDIAEoAlIGd2VpZ2h0EiQKBmV0aG5pYxgEIAEoDjIMLkV0aG5pY0dyb3VwUgZldGhuaWMSHwoGZ2VuZGVyGAUgASgOMgcuR2VuZGVyUgZnZW5kZXI=');
