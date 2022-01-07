///
//  Generated code. Do not modify.
//  source: device_status.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DeviceStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceStatus', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLastCommandValid', protoName: 'isLastCommandValid')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDeviceReady', protoName: 'isDeviceReady')
    ..hasRequiredFields = false
  ;

  DeviceStatus._() : super();
  factory DeviceStatus({
    $core.bool? isLastCommandValid,
    $core.bool? isDeviceReady,
  }) {
    final _result = create();
    if (isLastCommandValid != null) {
      _result.isLastCommandValid = isLastCommandValid;
    }
    if (isDeviceReady != null) {
      _result.isDeviceReady = isDeviceReady;
    }
    return _result;
  }
  factory DeviceStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceStatus clone() => DeviceStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceStatus copyWith(void Function(DeviceStatus) updates) => super.copyWith((message) => updates(message as DeviceStatus)) as DeviceStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceStatus create() => DeviceStatus._();
  DeviceStatus createEmptyInstance() => create();
  static $pb.PbList<DeviceStatus> createRepeated() => $pb.PbList<DeviceStatus>();
  @$core.pragma('dart2js:noInline')
  static DeviceStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceStatus>(create);
  static DeviceStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isLastCommandValid => $_getBF(0);
  @$pb.TagNumber(1)
  set isLastCommandValid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsLastCommandValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsLastCommandValid() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isDeviceReady => $_getBF(1);
  @$pb.TagNumber(2)
  set isDeviceReady($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsDeviceReady() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsDeviceReady() => clearField(2);
}

