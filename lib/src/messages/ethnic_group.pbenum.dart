///
//  Generated code. Do not modify.
//  source: ethnic_group.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class EthnicGroup extends $pb.ProtobufEnum {
  static const EthnicGroup ethnicGroupCaucasian = EthnicGroup._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ethnicGroupCaucasian');
  static const EthnicGroup ethnicGroupAfricanAmerican = EthnicGroup._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ethnicGroupAfricanAmerican');
  static const EthnicGroup ehnicGroupNorthEastAsian = EthnicGroup._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ehnicGroupNorthEastAsian');
  static const EthnicGroup ethnicGroupSouthEastAsian = EthnicGroup._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ethnicGroupSouthEastAsian');
  static const EthnicGroup ethnicGroupOther = EthnicGroup._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ethnicGroupOther');

  static const $core.List<EthnicGroup> values = <EthnicGroup> [
    ethnicGroupCaucasian,
    ethnicGroupAfricanAmerican,
    ehnicGroupNorthEastAsian,
    ethnicGroupSouthEastAsian,
    ethnicGroupOther,
  ];

  static final $core.Map<$core.int, EthnicGroup> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EthnicGroup? valueOf($core.int value) => _byValue[value];

  const EthnicGroup._($core.int v, $core.String n) : super(v, n);
}

