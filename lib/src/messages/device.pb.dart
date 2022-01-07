///
//  Generated code. Do not modify.
//  source: device.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'device_status.pb.dart' as $0;
import 'device_info.pb.dart' as $1;

class Device extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Device', createEmptyInstance: create)
    ..aOM<$0.DeviceStatus>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceStatus', protoName: 'deviceStatus', subBuilder: $0.DeviceStatus.create)
    ..aOM<$1.DeviceInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceInfo', protoName: 'deviceInfo', subBuilder: $1.DeviceInfo.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'batteryLevel', $pb.PbFieldType.O3, protoName: 'batteryLevel')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volumeStep', $pb.PbFieldType.O3, protoName: 'volumeStep')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareVersion', protoName: 'softwareVersion')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bluetoothVersion', protoName: 'bluetoothVersion')
    ..hasRequiredFields = false
  ;

  Device._() : super();
  factory Device({
    $0.DeviceStatus? deviceStatus,
    $1.DeviceInfo? deviceInfo,
    $core.int? batteryLevel,
    $core.int? volumeStep,
    $core.String? softwareVersion,
    $core.String? bluetoothVersion,
  }) {
    final _result = create();
    if (deviceStatus != null) {
      _result.deviceStatus = deviceStatus;
    }
    if (deviceInfo != null) {
      _result.deviceInfo = deviceInfo;
    }
    if (batteryLevel != null) {
      _result.batteryLevel = batteryLevel;
    }
    if (volumeStep != null) {
      _result.volumeStep = volumeStep;
    }
    if (softwareVersion != null) {
      _result.softwareVersion = softwareVersion;
    }
    if (bluetoothVersion != null) {
      _result.bluetoothVersion = bluetoothVersion;
    }
    return _result;
  }
  factory Device.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Device.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Device clone() => Device()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Device copyWith(void Function(Device) updates) => super.copyWith((message) => updates(message as Device)) as Device; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Device create() => Device._();
  Device createEmptyInstance() => create();
  static $pb.PbList<Device> createRepeated() => $pb.PbList<Device>();
  @$core.pragma('dart2js:noInline')
  static Device getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Device>(create);
  static Device? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceStatus get deviceStatus => $_getN(0);
  @$pb.TagNumber(1)
  set deviceStatus($0.DeviceStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceStatus() => clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceStatus ensureDeviceStatus() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.DeviceInfo get deviceInfo => $_getN(1);
  @$pb.TagNumber(2)
  set deviceInfo($1.DeviceInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceInfo() => clearField(2);
  @$pb.TagNumber(2)
  $1.DeviceInfo ensureDeviceInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get batteryLevel => $_getIZ(2);
  @$pb.TagNumber(3)
  set batteryLevel($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBatteryLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearBatteryLevel() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get volumeStep => $_getIZ(3);
  @$pb.TagNumber(4)
  set volumeStep($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVolumeStep() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolumeStep() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get softwareVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set softwareVersion($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSoftwareVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearSoftwareVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get bluetoothVersion => $_getSZ(5);
  @$pb.TagNumber(6)
  set bluetoothVersion($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBluetoothVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearBluetoothVersion() => clearField(6);
}

