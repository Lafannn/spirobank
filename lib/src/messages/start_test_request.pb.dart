///
//  Generated code. Do not modify.
//  source: start_test_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'test_type.pbenum.dart' as $0;
import 'turbine_type.pbenum.dart' as $1;

class StartTestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartTestRequest', createEmptyInstance: create)
    ..e<$0.TestType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testType', $pb.PbFieldType.OE, protoName: 'testType', defaultOrMaker: $0.TestType.TestFVC, valueOf: $0.TestType.valueOf, enumValues: $0.TestType.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endOfTestTimeout', $pb.PbFieldType.O3, protoName: 'endOfTestTimeout')
    ..e<$1.TurbineType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'turbineType', $pb.PbFieldType.OE, protoName: 'turbineType', defaultOrMaker: $1.TurbineType.Reusable, valueOf: $1.TurbineType.valueOf, enumValues: $1.TurbineType.values)
    ..hasRequiredFields = false
  ;

  StartTestRequest._() : super();
  factory StartTestRequest({
    $0.TestType? testType,
    $core.int? endOfTestTimeout,
    $1.TurbineType? turbineType,
  }) {
    final _result = create();
    if (testType != null) {
      _result.testType = testType;
    }
    if (endOfTestTimeout != null) {
      _result.endOfTestTimeout = endOfTestTimeout;
    }
    if (turbineType != null) {
      _result.turbineType = turbineType;
    }
    return _result;
  }
  factory StartTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartTestRequest clone() => StartTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartTestRequest copyWith(void Function(StartTestRequest) updates) => super.copyWith((message) => updates(message as StartTestRequest)) as StartTestRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartTestRequest create() => StartTestRequest._();
  StartTestRequest createEmptyInstance() => create();
  static $pb.PbList<StartTestRequest> createRepeated() => $pb.PbList<StartTestRequest>();
  @$core.pragma('dart2js:noInline')
  static StartTestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartTestRequest>(create);
  static StartTestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.TestType get testType => $_getN(0);
  @$pb.TagNumber(1)
  set testType($0.TestType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTestType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTestType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get endOfTestTimeout => $_getIZ(1);
  @$pb.TagNumber(2)
  set endOfTestTimeout($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndOfTestTimeout() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndOfTestTimeout() => clearField(2);

  @$pb.TagNumber(3)
  $1.TurbineType get turbineType => $_getN(2);
  @$pb.TagNumber(3)
  set turbineType($1.TurbineType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTurbineType() => $_has(2);
  @$pb.TagNumber(3)
  void clearTurbineType() => clearField(3);
}

