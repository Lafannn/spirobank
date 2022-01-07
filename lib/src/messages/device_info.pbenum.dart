///
//  Generated code. Do not modify.
//  source: device_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AtsStandard extends $pb.ProtobufEnum {
  static const AtsStandard ATS_2015 = AtsStandard._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ATS_2015');
  static const AtsStandard ATS_2019 = AtsStandard._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ATS_2019');

  static const $core.List<AtsStandard> values = <AtsStandard> [
    ATS_2015,
    ATS_2019,
  ];

  static final $core.Map<$core.int, AtsStandard> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AtsStandard? valueOf($core.int value) => _byValue[value];

  const AtsStandard._($core.int v, $core.String n) : super(v, n);
}

class CheckState extends $pb.ProtobufEnum {
  static const CheckState ENABLED = CheckState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENABLED');
  static const CheckState DISABLED = CheckState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISABLED');
  static const CheckState REQUEST_TIMED_OUT = CheckState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REQUEST_TIMED_OUT');
  static const CheckState FIRMWARE_UPDATE_NEEDED = CheckState._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIRMWARE_UPDATE_NEEDED');
  static const CheckState TEST_NOT_SUPPORTED = CheckState._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEST_NOT_SUPPORTED');

  static const $core.List<CheckState> values = <CheckState> [
    ENABLED,
    DISABLED,
    REQUEST_TIMED_OUT,
    FIRMWARE_UPDATE_NEEDED,
    TEST_NOT_SUPPORTED,
  ];

  static final $core.Map<$core.int, CheckState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CheckState? valueOf($core.int value) => _byValue[value];

  const CheckState._($core.int v, $core.String n) : super(v, n);
}

