///
//  Generated code. Do not modify.
//  source: flow.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Flow extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Flow', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OF)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFirstPackage', protoName: 'isFirstPackage')
    ..hasRequiredFields = false
  ;

  Flow._() : super();
  factory Flow({
    $core.double? value,
    $core.bool? isFirstPackage,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (isFirstPackage != null) {
      _result.isFirstPackage = isFirstPackage;
    }
    return _result;
  }
  factory Flow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Flow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Flow clone() => Flow()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Flow copyWith(void Function(Flow) updates) => super.copyWith((message) => updates(message as Flow)) as Flow; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Flow create() => Flow._();
  Flow createEmptyInstance() => create();
  static $pb.PbList<Flow> createRepeated() => $pb.PbList<Flow>();
  @$core.pragma('dart2js:noInline')
  static Flow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Flow>(create);
  static Flow? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isFirstPackage => $_getBF(1);
  @$pb.TagNumber(2)
  set isFirstPackage($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsFirstPackage() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFirstPackage() => clearField(2);
}

