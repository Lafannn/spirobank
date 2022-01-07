///
//  Generated code. Do not modify.
//  source: device_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'device_info.pbenum.dart';

export 'device_info.pbenum.dart';

class DeviceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceInfo', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protocol')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialNumber', protoName: 'serialNumber')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rssi')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentTestType', protoName: 'currentTestType')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'advertisementData', protoName: 'advertisementData')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nameCached', protoName: 'nameCached')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shortName', protoName: 'shortName')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bootID', protoName: 'bootID')
    ..e<AtsStandard>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'atsStandardSupported', $pb.PbFieldType.OE, protoName: 'atsStandardSupported', defaultOrMaker: AtsStandard.ATS_2015, valueOf: AtsStandard.valueOf, enumValues: AtsStandard.values)
    ..e<CheckState>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fvcPlusEnableStatus', $pb.PbFieldType.OE, protoName: 'fvcPlusEnableStatus', defaultOrMaker: CheckState.ENABLED, valueOf: CheckState.valueOf, enumValues: CheckState.values)
    ..e<CheckState>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vcEnableSatus', $pb.PbFieldType.OE, protoName: 'vcEnableSatus', defaultOrMaker: CheckState.ENABLED, valueOf: CheckState.valueOf, enumValues: CheckState.values)
    ..hasRequiredFields = false
  ;

  DeviceInfo._() : super();
  factory DeviceInfo({
    $core.String? deviceId,
    $core.String? name,
    $core.String? protocol,
    $core.String? serialNumber,
    $fixnum.Int64? rssi,
    $fixnum.Int64? currentTestType,
    $core.String? advertisementData,
    $core.String? nameCached,
    $core.String? shortName,
    $core.String? bootID,
    AtsStandard? atsStandardSupported,
    CheckState? fvcPlusEnableStatus,
    CheckState? vcEnableSatus,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (protocol != null) {
      _result.protocol = protocol;
    }
    if (serialNumber != null) {
      _result.serialNumber = serialNumber;
    }
    if (rssi != null) {
      _result.rssi = rssi;
    }
    if (currentTestType != null) {
      _result.currentTestType = currentTestType;
    }
    if (advertisementData != null) {
      _result.advertisementData = advertisementData;
    }
    if (nameCached != null) {
      _result.nameCached = nameCached;
    }
    if (shortName != null) {
      _result.shortName = shortName;
    }
    if (bootID != null) {
      _result.bootID = bootID;
    }
    if (atsStandardSupported != null) {
      _result.atsStandardSupported = atsStandardSupported;
    }
    if (fvcPlusEnableStatus != null) {
      _result.fvcPlusEnableStatus = fvcPlusEnableStatus;
    }
    if (vcEnableSatus != null) {
      _result.vcEnableSatus = vcEnableSatus;
    }
    return _result;
  }
  factory DeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceInfo clone() => DeviceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceInfo copyWith(void Function(DeviceInfo) updates) => super.copyWith((message) => updates(message as DeviceInfo)) as DeviceInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceInfo create() => DeviceInfo._();
  DeviceInfo createEmptyInstance() => create();
  static $pb.PbList<DeviceInfo> createRepeated() => $pb.PbList<DeviceInfo>();
  @$core.pragma('dart2js:noInline')
  static DeviceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceInfo>(create);
  static DeviceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get protocol => $_getSZ(2);
  @$pb.TagNumber(3)
  set protocol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProtocol() => $_has(2);
  @$pb.TagNumber(3)
  void clearProtocol() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get serialNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set serialNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSerialNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearSerialNumber() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get rssi => $_getI64(4);
  @$pb.TagNumber(5)
  set rssi($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRssi() => $_has(4);
  @$pb.TagNumber(5)
  void clearRssi() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get currentTestType => $_getI64(5);
  @$pb.TagNumber(6)
  set currentTestType($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrentTestType() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentTestType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get advertisementData => $_getSZ(6);
  @$pb.TagNumber(7)
  set advertisementData($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAdvertisementData() => $_has(6);
  @$pb.TagNumber(7)
  void clearAdvertisementData() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get nameCached => $_getSZ(7);
  @$pb.TagNumber(8)
  set nameCached($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasNameCached() => $_has(7);
  @$pb.TagNumber(8)
  void clearNameCached() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get shortName => $_getSZ(8);
  @$pb.TagNumber(9)
  set shortName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasShortName() => $_has(8);
  @$pb.TagNumber(9)
  void clearShortName() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get bootID => $_getSZ(9);
  @$pb.TagNumber(10)
  set bootID($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBootID() => $_has(9);
  @$pb.TagNumber(10)
  void clearBootID() => clearField(10);

  @$pb.TagNumber(11)
  AtsStandard get atsStandardSupported => $_getN(10);
  @$pb.TagNumber(11)
  set atsStandardSupported(AtsStandard v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasAtsStandardSupported() => $_has(10);
  @$pb.TagNumber(11)
  void clearAtsStandardSupported() => clearField(11);

  @$pb.TagNumber(12)
  CheckState get fvcPlusEnableStatus => $_getN(11);
  @$pb.TagNumber(12)
  set fvcPlusEnableStatus(CheckState v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasFvcPlusEnableStatus() => $_has(11);
  @$pb.TagNumber(12)
  void clearFvcPlusEnableStatus() => clearField(12);

  @$pb.TagNumber(13)
  CheckState get vcEnableSatus => $_getN(12);
  @$pb.TagNumber(13)
  set vcEnableSatus(CheckState v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasVcEnableSatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearVcEnableSatus() => clearField(13);
}

