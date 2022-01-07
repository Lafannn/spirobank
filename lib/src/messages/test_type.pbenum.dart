///
//  Generated code. Do not modify.
//  source: test_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TestType extends $pb.ProtobufEnum {
  static const TestType TestFVC = TestType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TestFVC');
  static const TestType TestPeakFlowFev1 = TestType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TestPeakFlowFev1');
  static const TestType TestOximetry = TestType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TestOximetry');
  static const TestType TestFTmonitor = TestType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TestFTmonitor');
  static const TestType TestFVCPlus = TestType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TestFVCPlus');
  static const TestType TestVC = TestType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TestVC');
  static const TestType TestECG = TestType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TestECG');

  static const $core.List<TestType> values = <TestType> [
    TestFVC,
    TestPeakFlowFev1,
    TestOximetry,
    TestFTmonitor,
    TestFVCPlus,
    TestVC,
    TestECG,
  ];

  static final $core.Map<$core.int, TestType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestType? valueOf($core.int value) => _byValue[value];

  const TestType._($core.int v, $core.String n) : super(v, n);
}

