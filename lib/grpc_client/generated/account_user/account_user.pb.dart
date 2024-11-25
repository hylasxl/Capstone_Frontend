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

import '../google/protobuf/timestamp.pb.dart' as $1;
import 'account_user.pbenum.dart';

export 'account_user.pbenum.dart';

class GetAccountInfoRequest extends $pb.GeneratedMessage {
  factory GetAccountInfoRequest({
    $core.String? accountId,
  }) {
    final $result = create();
    if (accountId != null) {
      $result.accountId = accountId;
    }
    return $result;
  }
  GetAccountInfoRequest._() : super();
  factory GetAccountInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAccountInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user_account'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountId', protoName: 'accountId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountInfoRequest clone() => GetAccountInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountInfoRequest copyWith(void Function(GetAccountInfoRequest) updates) => super.copyWith((message) => updates(message as GetAccountInfoRequest)) as GetAccountInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountInfoRequest create() => GetAccountInfoRequest._();
  GetAccountInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountInfoRequest> createRepeated() => $pb.PbList<GetAccountInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountInfoRequest>(create);
  static GetAccountInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class GetAccountInfoResponse extends $pb.GeneratedMessage {
  factory GetAccountInfoResponse({
    Account? account,
    AccountInfo? accountInfo,
    AccountAvatar? avatar,
    $core.String? error,
    $core.String? errorCode,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    if (accountInfo != null) {
      $result.accountInfo = accountInfo;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (error != null) {
      $result.error = error;
    }
    if (errorCode != null) {
      $result.errorCode = errorCode;
    }
    return $result;
  }
  GetAccountInfoResponse._() : super();
  factory GetAccountInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAccountInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user_account'), createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'account', subBuilder: Account.create)
    ..aOM<AccountInfo>(2, _omitFieldNames ? '' : 'accountInfo', protoName: 'accountInfo', subBuilder: AccountInfo.create)
    ..aOM<AccountAvatar>(3, _omitFieldNames ? '' : 'avatar', subBuilder: AccountAvatar.create)
    ..aOS(4, _omitFieldNames ? '' : 'error')
    ..aOS(5, _omitFieldNames ? '' : 'errorCode', protoName: 'errorCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountInfoResponse clone() => GetAccountInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountInfoResponse copyWith(void Function(GetAccountInfoResponse) updates) => super.copyWith((message) => updates(message as GetAccountInfoResponse)) as GetAccountInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountInfoResponse create() => GetAccountInfoResponse._();
  GetAccountInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountInfoResponse> createRepeated() => $pb.PbList<GetAccountInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountInfoResponse>(create);
  static GetAccountInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  Account ensureAccount() => $_ensure(0);

  @$pb.TagNumber(2)
  AccountInfo get accountInfo => $_getN(1);
  @$pb.TagNumber(2)
  set accountInfo(AccountInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountInfo() => clearField(2);
  @$pb.TagNumber(2)
  AccountInfo ensureAccountInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  AccountAvatar get avatar => $_getN(2);
  @$pb.TagNumber(3)
  set avatar(AccountAvatar v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);
  @$pb.TagNumber(3)
  AccountAvatar ensureAvatar() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get error => $_getSZ(3);
  @$pb.TagNumber(4)
  set error($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get errorCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set errorCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasErrorCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearErrorCode() => clearField(5);
}

class Account extends $pb.GeneratedMessage {
  factory Account({
    $core.String? id,
    $core.String? username,
    $core.int? accountRoleId,
    AccountCreatedByMethod? createdBy,
    $core.bool? isBanned,
    $core.bool? isRestricted,
    $core.bool? isSelfDeleted,
    $1.Timestamp? createdAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (username != null) {
      $result.username = username;
    }
    if (accountRoleId != null) {
      $result.accountRoleId = accountRoleId;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (isBanned != null) {
      $result.isBanned = isBanned;
    }
    if (isRestricted != null) {
      $result.isRestricted = isRestricted;
    }
    if (isSelfDeleted != null) {
      $result.isSelfDeleted = isSelfDeleted;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    return $result;
  }
  Account._() : super();
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Account', package: const $pb.PackageName(_omitMessageNames ? '' : 'user_account'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'accountRoleId', $pb.PbFieldType.OU3, protoName: 'accountRoleId')
    ..e<AccountCreatedByMethod>(5, _omitFieldNames ? '' : 'createdBy', $pb.PbFieldType.OE, protoName: 'createdBy', defaultOrMaker: AccountCreatedByMethod.ACCOUNT_CREATED_BY_GOOGLE, valueOf: AccountCreatedByMethod.valueOf, enumValues: AccountCreatedByMethod.values)
    ..aOB(6, _omitFieldNames ? '' : 'isBanned', protoName: 'isBanned')
    ..aOB(7, _omitFieldNames ? '' : 'isRestricted', protoName: 'isRestricted')
    ..aOB(8, _omitFieldNames ? '' : 'isSelfDeleted', protoName: 'isSelfDeleted')
    ..aOM<$1.Timestamp>(9, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get accountRoleId => $_getIZ(2);
  @$pb.TagNumber(3)
  set accountRoleId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountRoleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountRoleId() => clearField(3);

  @$pb.TagNumber(5)
  AccountCreatedByMethod get createdBy => $_getN(3);
  @$pb.TagNumber(5)
  set createdBy(AccountCreatedByMethod v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedBy() => $_has(3);
  @$pb.TagNumber(5)
  void clearCreatedBy() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isBanned => $_getBF(4);
  @$pb.TagNumber(6)
  set isBanned($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsBanned() => $_has(4);
  @$pb.TagNumber(6)
  void clearIsBanned() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isRestricted => $_getBF(5);
  @$pb.TagNumber(7)
  set isRestricted($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsRestricted() => $_has(5);
  @$pb.TagNumber(7)
  void clearIsRestricted() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isSelfDeleted => $_getBF(6);
  @$pb.TagNumber(8)
  set isSelfDeleted($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsSelfDeleted() => $_has(6);
  @$pb.TagNumber(8)
  void clearIsSelfDeleted() => clearField(8);

  @$pb.TagNumber(9)
  $1.Timestamp get createdAt => $_getN(7);
  @$pb.TagNumber(9)
  set createdAt($1.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(9)
  void clearCreatedAt() => clearField(9);
  @$pb.TagNumber(9)
  $1.Timestamp ensureCreatedAt() => $_ensure(7);
}

class AccountInfo extends $pb.GeneratedMessage {
  factory AccountInfo({
    $core.String? id,
    $core.String? accountId,
    $core.String? avatarId,
    $core.String? firstName,
    $core.String? lastName,
    $1.Timestamp? dateOfBirth,
    Gender? gender,
    MaritalStatus? maritalStatus,
    $core.String? phoneNumber,
    $core.String? email,
    NameDisplayType? nameDisplayType,
    $1.Timestamp? createdAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (accountId != null) {
      $result.accountId = accountId;
    }
    if (avatarId != null) {
      $result.avatarId = avatarId;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (dateOfBirth != null) {
      $result.dateOfBirth = dateOfBirth;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (maritalStatus != null) {
      $result.maritalStatus = maritalStatus;
    }
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (email != null) {
      $result.email = email;
    }
    if (nameDisplayType != null) {
      $result.nameDisplayType = nameDisplayType;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    return $result;
  }
  AccountInfo._() : super();
  factory AccountInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'user_account'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'accountId', protoName: 'accountId')
    ..aOS(3, _omitFieldNames ? '' : 'avatarId', protoName: 'avatarId')
    ..aOS(4, _omitFieldNames ? '' : 'firstName', protoName: 'firstName')
    ..aOS(5, _omitFieldNames ? '' : 'lastName', protoName: 'lastName')
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'dateOfBirth', protoName: 'dateOfBirth', subBuilder: $1.Timestamp.create)
    ..e<Gender>(7, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.MALE, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..e<MaritalStatus>(8, _omitFieldNames ? '' : 'maritalStatus', $pb.PbFieldType.OE, protoName: 'maritalStatus', defaultOrMaker: MaritalStatus.SINGLE, valueOf: MaritalStatus.valueOf, enumValues: MaritalStatus.values)
    ..aOS(9, _omitFieldNames ? '' : 'phoneNumber', protoName: 'phoneNumber')
    ..aOS(10, _omitFieldNames ? '' : 'email')
    ..e<NameDisplayType>(11, _omitFieldNames ? '' : 'nameDisplayType', $pb.PbFieldType.OE, protoName: 'nameDisplayType', defaultOrMaker: NameDisplayType.FIRST_NAME_FIRST, valueOf: NameDisplayType.valueOf, enumValues: NameDisplayType.values)
    ..aOM<$1.Timestamp>(12, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountInfo clone() => AccountInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountInfo copyWith(void Function(AccountInfo) updates) => super.copyWith((message) => updates(message as AccountInfo)) as AccountInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountInfo create() => AccountInfo._();
  AccountInfo createEmptyInstance() => create();
  static $pb.PbList<AccountInfo> createRepeated() => $pb.PbList<AccountInfo>();
  @$core.pragma('dart2js:noInline')
  static AccountInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountInfo>(create);
  static AccountInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarId => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatarId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatarId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatarId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstName => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstName() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get lastName => $_getSZ(4);
  @$pb.TagNumber(5)
  set lastName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastName() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastName() => clearField(5);

  @$pb.TagNumber(6)
  $1.Timestamp get dateOfBirth => $_getN(5);
  @$pb.TagNumber(6)
  set dateOfBirth($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDateOfBirth() => $_has(5);
  @$pb.TagNumber(6)
  void clearDateOfBirth() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureDateOfBirth() => $_ensure(5);

  @$pb.TagNumber(7)
  Gender get gender => $_getN(6);
  @$pb.TagNumber(7)
  set gender(Gender v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasGender() => $_has(6);
  @$pb.TagNumber(7)
  void clearGender() => clearField(7);

  @$pb.TagNumber(8)
  MaritalStatus get maritalStatus => $_getN(7);
  @$pb.TagNumber(8)
  set maritalStatus(MaritalStatus v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasMaritalStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearMaritalStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get phoneNumber => $_getSZ(8);
  @$pb.TagNumber(9)
  set phoneNumber($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPhoneNumber() => $_has(8);
  @$pb.TagNumber(9)
  void clearPhoneNumber() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get email => $_getSZ(9);
  @$pb.TagNumber(10)
  set email($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEmail() => $_has(9);
  @$pb.TagNumber(10)
  void clearEmail() => clearField(10);

  @$pb.TagNumber(11)
  NameDisplayType get nameDisplayType => $_getN(10);
  @$pb.TagNumber(11)
  set nameDisplayType(NameDisplayType v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasNameDisplayType() => $_has(10);
  @$pb.TagNumber(11)
  void clearNameDisplayType() => clearField(11);

  @$pb.TagNumber(12)
  $1.Timestamp get createdAt => $_getN(11);
  @$pb.TagNumber(12)
  set createdAt($1.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCreatedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearCreatedAt() => clearField(12);
  @$pb.TagNumber(12)
  $1.Timestamp ensureCreatedAt() => $_ensure(11);
}

class AccountAvatar extends $pb.GeneratedMessage {
  factory AccountAvatar({
    $core.String? id,
    $core.String? avatarUrl,
    $core.bool? isInUse,
    $core.bool? isDeleted,
    $core.bool? isUsingDefault,
    $1.Timestamp? createdAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    if (isInUse != null) {
      $result.isInUse = isInUse;
    }
    if (isDeleted != null) {
      $result.isDeleted = isDeleted;
    }
    if (isUsingDefault != null) {
      $result.isUsingDefault = isUsingDefault;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    return $result;
  }
  AccountAvatar._() : super();
  factory AccountAvatar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAvatar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountAvatar', package: const $pb.PackageName(_omitMessageNames ? '' : 'user_account'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'avatarUrl', protoName: 'avatarUrl')
    ..aOB(3, _omitFieldNames ? '' : 'isInUse', protoName: 'isInUse')
    ..aOB(4, _omitFieldNames ? '' : 'isDeleted', protoName: 'isDeleted')
    ..aOB(5, _omitFieldNames ? '' : 'isUsingDefault', protoName: 'isUsingDefault')
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAvatar clone() => AccountAvatar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAvatar copyWith(void Function(AccountAvatar) updates) => super.copyWith((message) => updates(message as AccountAvatar)) as AccountAvatar;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountAvatar create() => AccountAvatar._();
  AccountAvatar createEmptyInstance() => create();
  static $pb.PbList<AccountAvatar> createRepeated() => $pb.PbList<AccountAvatar>();
  @$core.pragma('dart2js:noInline')
  static AccountAvatar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAvatar>(create);
  static AccountAvatar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatarUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatarUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatarUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatarUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isInUse => $_getBF(2);
  @$pb.TagNumber(3)
  set isInUse($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsInUse() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsInUse() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isDeleted => $_getBF(3);
  @$pb.TagNumber(4)
  set isDeleted($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsDeleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsDeleted() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isUsingDefault => $_getBF(4);
  @$pb.TagNumber(5)
  set isUsingDefault($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsUsingDefault() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsUsingDefault() => clearField(5);

  @$pb.TagNumber(6)
  $1.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(6)
  set createdAt($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureCreatedAt() => $_ensure(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
