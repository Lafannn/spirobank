///
//  Generated code. Do not modify.
//  source: get_percentage_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetPercentageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPercentageRequest', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flow', $pb.PbFieldType.OF)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volumeStep', $pb.PbFieldType.O3, protoName: 'volumeStep')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFirstPackage', protoName: 'isFirstPackage')
    ..hasRequiredFields = false
  ;

  GetPercentageRequest._() : super();
  factory GetPercentageRequest({
    $core.double? flow,
    $core.int? volumeStep,
    $core.bool? isFirstPackage,
  }) {
    final _result = create();
    if (flow != null) {
      _result.flow = flow;
    }
    if (volumeStep != null) {
      _result.volumeStep = volumeStep;
    }
    if (isFirstPackage != null) {
      _result.isFirstPackage = isFirstPackage;
    }
    return _result;
  }
  factory GetPercentageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPercentageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPercentageRequest clone() => GetPercentageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPercentageRequest copyWith(void Function(GetPercentageRequest) updates) => super.copyWith((message) => updates(message as GetPercentageRequest)) as GetPercentageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPercentageRequest create() => GetPercentageRequest._();
  GetPercentageRequest createEmptyInstance() => create();
  static $pb.PbList<GetPercentageRequest> createRepeated() => $pb.PbList<GetPercentageRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPercentageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPercentageRequest>(create);
  static GetPercentageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get flow => $_getN(0);
  @$pb.TagNumber(1)
  set flow($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFlow() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlow() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get volumeStep => $_getIZ(1);
  @$pb.TagNumber(2)
  set volumeStep($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVolumeStep() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolumeStep() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isFirstPackage => $_getBF(2);
  @$pb.TagNumber(3)
  set isFirstPackage($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsFirstPackage() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsFirstPackage() => clearField(3);
}

