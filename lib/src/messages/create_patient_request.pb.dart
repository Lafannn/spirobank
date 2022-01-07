///
//  Generated code. Do not modify.
//  source: create_patient_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ethnic_group.pbenum.dart' as $0;
import 'gender.pbenum.dart' as $1;

class CreatePatientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePatientRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.OF)
    ..e<$0.EthnicGroup>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ethnic', $pb.PbFieldType.OE, defaultOrMaker: $0.EthnicGroup.ethnicGroupCaucasian, valueOf: $0.EthnicGroup.valueOf, enumValues: $0.EthnicGroup.values)
    ..e<$1.Gender>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: $1.Gender.SOGenderMale, valueOf: $1.Gender.valueOf, enumValues: $1.Gender.values)
    ..hasRequiredFields = false
  ;

  CreatePatientRequest._() : super();
  factory CreatePatientRequest({
    $core.String? date,
    $core.double? height,
    $core.double? weight,
    $0.EthnicGroup? ethnic,
    $1.Gender? gender,
  }) {
    final _result = create();
    if (date != null) {
      _result.date = date;
    }
    if (height != null) {
      _result.height = height;
    }
    if (weight != null) {
      _result.weight = weight;
    }
    if (ethnic != null) {
      _result.ethnic = ethnic;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    return _result;
  }
  factory CreatePatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePatientRequest clone() => CreatePatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePatientRequest copyWith(void Function(CreatePatientRequest) updates) => super.copyWith((message) => updates(message as CreatePatientRequest)) as CreatePatientRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePatientRequest create() => CreatePatientRequest._();
  CreatePatientRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePatientRequest> createRepeated() => $pb.PbList<CreatePatientRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePatientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePatientRequest>(create);
  static CreatePatientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get height => $_getN(1);
  @$pb.TagNumber(2)
  set height($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get weight => $_getN(2);
  @$pb.TagNumber(3)
  set weight($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeight() => clearField(3);

  @$pb.TagNumber(4)
  $0.EthnicGroup get ethnic => $_getN(3);
  @$pb.TagNumber(4)
  set ethnic($0.EthnicGroup v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEthnic() => $_has(3);
  @$pb.TagNumber(4)
  void clearEthnic() => clearField(4);

  @$pb.TagNumber(5)
  $1.Gender get gender => $_getN(4);
  @$pb.TagNumber(5)
  set gender($1.Gender v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearGender() => clearField(5);
}

