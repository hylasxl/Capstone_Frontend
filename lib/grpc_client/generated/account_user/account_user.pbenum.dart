//
//  Generated code. Do not modify.
//  source: account_user/account_user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AccountCreatedByMethod extends $pb.ProtobufEnum {
  static const AccountCreatedByMethod ACCOUNT_CREATED_BY_GOOGLE = AccountCreatedByMethod._(0, _omitEnumNames ? '' : 'ACCOUNT_CREATED_BY_GOOGLE');
  static const AccountCreatedByMethod ACCOUNT_CREATED_BY_NORMAL = AccountCreatedByMethod._(1, _omitEnumNames ? '' : 'ACCOUNT_CREATED_BY_NORMAL');

  static const $core.List<AccountCreatedByMethod> values = <AccountCreatedByMethod> [
    ACCOUNT_CREATED_BY_GOOGLE,
    ACCOUNT_CREATED_BY_NORMAL,
  ];

  static final $core.Map<$core.int, AccountCreatedByMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountCreatedByMethod? valueOf($core.int value) => _byValue[value];

  const AccountCreatedByMethod._($core.int v, $core.String n) : super(v, n);
}

class Gender extends $pb.ProtobufEnum {
  static const Gender MALE = Gender._(0, _omitEnumNames ? '' : 'MALE');
  static const Gender FEMALE = Gender._(1, _omitEnumNames ? '' : 'FEMALE');
  static const Gender OTHER = Gender._(2, _omitEnumNames ? '' : 'OTHER');

  static const $core.List<Gender> values = <Gender> [
    MALE,
    FEMALE,
    OTHER,
  ];

  static final $core.Map<$core.int, Gender> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Gender? valueOf($core.int value) => _byValue[value];

  const Gender._($core.int v, $core.String n) : super(v, n);
}

class MaritalStatus extends $pb.ProtobufEnum {
  static const MaritalStatus SINGLE = MaritalStatus._(0, _omitEnumNames ? '' : 'SINGLE');
  static const MaritalStatus IN_A_RELATIONSHIP = MaritalStatus._(1, _omitEnumNames ? '' : 'IN_A_RELATIONSHIP');
  static const MaritalStatus ENGAGED = MaritalStatus._(2, _omitEnumNames ? '' : 'ENGAGED');
  static const MaritalStatus MARRIED = MaritalStatus._(3, _omitEnumNames ? '' : 'MARRIED');
  static const MaritalStatus IN_A_CIVIL_UNION = MaritalStatus._(4, _omitEnumNames ? '' : 'IN_A_CIVIL_UNION');
  static const MaritalStatus IN_A_DOMESTIC_PARTNERSHIP = MaritalStatus._(5, _omitEnumNames ? '' : 'IN_A_DOMESTIC_PARTNERSHIP');
  static const MaritalStatus IN_AN_OPEN_RELATIONSHIP = MaritalStatus._(6, _omitEnumNames ? '' : 'IN_AN_OPEN_RELATIONSHIP');
  static const MaritalStatus ITS_COMPLICATED = MaritalStatus._(7, _omitEnumNames ? '' : 'ITS_COMPLICATED');
  static const MaritalStatus SEPARATED = MaritalStatus._(8, _omitEnumNames ? '' : 'SEPARATED');
  static const MaritalStatus DIVORCED = MaritalStatus._(9, _omitEnumNames ? '' : 'DIVORCED');
  static const MaritalStatus WIDOWED = MaritalStatus._(10, _omitEnumNames ? '' : 'WIDOWED');

  static const $core.List<MaritalStatus> values = <MaritalStatus> [
    SINGLE,
    IN_A_RELATIONSHIP,
    ENGAGED,
    MARRIED,
    IN_A_CIVIL_UNION,
    IN_A_DOMESTIC_PARTNERSHIP,
    IN_AN_OPEN_RELATIONSHIP,
    ITS_COMPLICATED,
    SEPARATED,
    DIVORCED,
    WIDOWED,
  ];

  static final $core.Map<$core.int, MaritalStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MaritalStatus? valueOf($core.int value) => _byValue[value];

  const MaritalStatus._($core.int v, $core.String n) : super(v, n);
}

class NameDisplayType extends $pb.ProtobufEnum {
  static const NameDisplayType FIRST_NAME_FIRST = NameDisplayType._(0, _omitEnumNames ? '' : 'FIRST_NAME_FIRST');
  static const NameDisplayType LAST_NAME_FIRST = NameDisplayType._(1, _omitEnumNames ? '' : 'LAST_NAME_FIRST');

  static const $core.List<NameDisplayType> values = <NameDisplayType> [
    FIRST_NAME_FIRST,
    LAST_NAME_FIRST,
  ];

  static final $core.Map<$core.int, NameDisplayType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NameDisplayType? valueOf($core.int value) => _byValue[value];

  const NameDisplayType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
