//
//  Generated code. Do not modify.
//  source: account_user/account_user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use accountCreatedByMethodDescriptor instead')
const AccountCreatedByMethod$json = {
  '1': 'AccountCreatedByMethod',
  '2': [
    {'1': 'ACCOUNT_CREATED_BY_GOOGLE', '2': 0},
    {'1': 'ACCOUNT_CREATED_BY_NORMAL', '2': 1},
  ],
};

/// Descriptor for `AccountCreatedByMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountCreatedByMethodDescriptor = $convert.base64Decode(
    'ChZBY2NvdW50Q3JlYXRlZEJ5TWV0aG9kEh0KGUFDQ09VTlRfQ1JFQVRFRF9CWV9HT09HTEUQAB'
    'IdChlBQ0NPVU5UX0NSRUFURURfQllfTk9STUFMEAE=');

@$core.Deprecated('Use genderDescriptor instead')
const Gender$json = {
  '1': 'Gender',
  '2': [
    {'1': 'MALE', '2': 0},
    {'1': 'FEMALE', '2': 1},
    {'1': 'OTHER', '2': 2},
  ],
};

/// Descriptor for `Gender`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List genderDescriptor = $convert.base64Decode(
    'CgZHZW5kZXISCAoETUFMRRAAEgoKBkZFTUFMRRABEgkKBU9USEVSEAI=');

@$core.Deprecated('Use maritalStatusDescriptor instead')
const MaritalStatus$json = {
  '1': 'MaritalStatus',
  '2': [
    {'1': 'SINGLE', '2': 0},
    {'1': 'IN_A_RELATIONSHIP', '2': 1},
    {'1': 'ENGAGED', '2': 2},
    {'1': 'MARRIED', '2': 3},
    {'1': 'IN_A_CIVIL_UNION', '2': 4},
    {'1': 'IN_A_DOMESTIC_PARTNERSHIP', '2': 5},
    {'1': 'IN_AN_OPEN_RELATIONSHIP', '2': 6},
    {'1': 'ITS_COMPLICATED', '2': 7},
    {'1': 'SEPARATED', '2': 8},
    {'1': 'DIVORCED', '2': 9},
    {'1': 'WIDOWED', '2': 10},
  ],
};

/// Descriptor for `MaritalStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List maritalStatusDescriptor = $convert.base64Decode(
    'Cg1NYXJpdGFsU3RhdHVzEgoKBlNJTkdMRRAAEhUKEUlOX0FfUkVMQVRJT05TSElQEAESCwoHRU'
    '5HQUdFRBACEgsKB01BUlJJRUQQAxIUChBJTl9BX0NJVklMX1VOSU9OEAQSHQoZSU5fQV9ET01F'
    'U1RJQ19QQVJUTkVSU0hJUBAFEhsKF0lOX0FOX09QRU5fUkVMQVRJT05TSElQEAYSEwoPSVRTX0'
    'NPTVBMSUNBVEVEEAcSDQoJU0VQQVJBVEVEEAgSDAoIRElWT1JDRUQQCRILCgdXSURPV0VEEAo=');

@$core.Deprecated('Use nameDisplayTypeDescriptor instead')
const NameDisplayType$json = {
  '1': 'NameDisplayType',
  '2': [
    {'1': 'FIRST_NAME_FIRST', '2': 0},
    {'1': 'LAST_NAME_FIRST', '2': 1},
  ],
};

/// Descriptor for `NameDisplayType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nameDisplayTypeDescriptor = $convert.base64Decode(
    'Cg9OYW1lRGlzcGxheVR5cGUSFAoQRklSU1RfTkFNRV9GSVJTVBAAEhMKD0xBU1RfTkFNRV9GSV'
    'JTVBAB');

@$core.Deprecated('Use getAccountInfoRequestDescriptor instead')
const GetAccountInfoRequest$json = {
  '1': 'GetAccountInfoRequest',
  '2': [
    {'1': 'accountId', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `GetAccountInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountInfoRequestDescriptor = $convert.base64Decode(
    'ChVHZXRBY2NvdW50SW5mb1JlcXVlc3QSHAoJYWNjb3VudElkGAEgASgJUglhY2NvdW50SWQ=');

@$core.Deprecated('Use getAccountInfoResponseDescriptor instead')
const GetAccountInfoResponse$json = {
  '1': 'GetAccountInfoResponse',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.user_account.Account', '10': 'account'},
    {'1': 'accountInfo', '3': 2, '4': 1, '5': 11, '6': '.user_account.AccountInfo', '10': 'accountInfo'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 11, '6': '.user_account.AccountAvatar', '10': 'avatar'},
    {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
    {'1': 'errorCode', '3': 5, '4': 1, '5': 9, '10': 'errorCode'},
  ],
};

/// Descriptor for `GetAccountInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountInfoResponseDescriptor = $convert.base64Decode(
    'ChZHZXRBY2NvdW50SW5mb1Jlc3BvbnNlEi8KB2FjY291bnQYASABKAsyFS51c2VyX2FjY291bn'
    'QuQWNjb3VudFIHYWNjb3VudBI7CgthY2NvdW50SW5mbxgCIAEoCzIZLnVzZXJfYWNjb3VudC5B'
    'Y2NvdW50SW5mb1ILYWNjb3VudEluZm8SMwoGYXZhdGFyGAMgASgLMhsudXNlcl9hY2NvdW50Lk'
    'FjY291bnRBdmF0YXJSBmF2YXRhchIUCgVlcnJvchgEIAEoCVIFZXJyb3ISHAoJZXJyb3JDb2Rl'
    'GAUgASgJUgllcnJvckNvZGU=');

@$core.Deprecated('Use accountDescriptor instead')
const Account$json = {
  '1': 'Account',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'accountRoleId', '3': 3, '4': 1, '5': 13, '10': 'accountRoleId'},
    {'1': 'createdBy', '3': 5, '4': 1, '5': 14, '6': '.user_account.AccountCreatedByMethod', '10': 'createdBy'},
    {'1': 'isBanned', '3': 6, '4': 1, '5': 8, '10': 'isBanned'},
    {'1': 'isRestricted', '3': 7, '4': 1, '5': 8, '10': 'isRestricted'},
    {'1': 'isSelfDeleted', '3': 8, '4': 1, '5': 8, '10': 'isSelfDeleted'},
    {'1': 'createdAt', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode(
    'CgdBY2NvdW50Eg4KAmlkGAEgASgJUgJpZBIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSJA'
    'oNYWNjb3VudFJvbGVJZBgDIAEoDVINYWNjb3VudFJvbGVJZBJCCgljcmVhdGVkQnkYBSABKA4y'
    'JC51c2VyX2FjY291bnQuQWNjb3VudENyZWF0ZWRCeU1ldGhvZFIJY3JlYXRlZEJ5EhoKCGlzQm'
    'FubmVkGAYgASgIUghpc0Jhbm5lZBIiCgxpc1Jlc3RyaWN0ZWQYByABKAhSDGlzUmVzdHJpY3Rl'
    'ZBIkCg1pc1NlbGZEZWxldGVkGAggASgIUg1pc1NlbGZEZWxldGVkEjgKCWNyZWF0ZWRBdBgJIA'
    'EoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdA==');

@$core.Deprecated('Use accountInfoDescriptor instead')
const AccountInfo$json = {
  '1': 'AccountInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'accountId', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    {'1': 'avatarId', '3': 3, '4': 1, '5': 9, '10': 'avatarId'},
    {'1': 'firstName', '3': 4, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 5, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'dateOfBirth', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateOfBirth'},
    {'1': 'gender', '3': 7, '4': 1, '5': 14, '6': '.user_account.Gender', '10': 'gender'},
    {'1': 'maritalStatus', '3': 8, '4': 1, '5': 14, '6': '.user_account.MaritalStatus', '10': 'maritalStatus'},
    {'1': 'phoneNumber', '3': 9, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'email', '3': 10, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nameDisplayType', '3': 11, '4': 1, '5': 14, '6': '.user_account.NameDisplayType', '10': 'nameDisplayType'},
    {'1': 'createdAt', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `AccountInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoDescriptor = $convert.base64Decode(
    'CgtBY2NvdW50SW5mbxIOCgJpZBgBIAEoCVICaWQSHAoJYWNjb3VudElkGAIgASgJUglhY2NvdW'
    '50SWQSGgoIYXZhdGFySWQYAyABKAlSCGF2YXRhcklkEhwKCWZpcnN0TmFtZRgEIAEoCVIJZmly'
    'c3ROYW1lEhoKCGxhc3ROYW1lGAUgASgJUghsYXN0TmFtZRI8CgtkYXRlT2ZCaXJ0aBgGIAEoCz'
    'IaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2RhdGVPZkJpcnRoEiwKBmdlbmRlchgHIAEo'
    'DjIULnVzZXJfYWNjb3VudC5HZW5kZXJSBmdlbmRlchJBCg1tYXJpdGFsU3RhdHVzGAggASgOMh'
    'sudXNlcl9hY2NvdW50Lk1hcml0YWxTdGF0dXNSDW1hcml0YWxTdGF0dXMSIAoLcGhvbmVOdW1i'
    'ZXIYCSABKAlSC3Bob25lTnVtYmVyEhQKBWVtYWlsGAogASgJUgVlbWFpbBJHCg9uYW1lRGlzcG'
    'xheVR5cGUYCyABKA4yHS51c2VyX2FjY291bnQuTmFtZURpc3BsYXlUeXBlUg9uYW1lRGlzcGxh'
    'eVR5cGUSOAoJY3JlYXRlZEF0GAwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3'
    'JlYXRlZEF0');

@$core.Deprecated('Use accountAvatarDescriptor instead')
const AccountAvatar$json = {
  '1': 'AccountAvatar',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'avatarUrl', '3': 2, '4': 1, '5': 9, '10': 'avatarUrl'},
    {'1': 'isInUse', '3': 3, '4': 1, '5': 8, '10': 'isInUse'},
    {'1': 'isDeleted', '3': 4, '4': 1, '5': 8, '10': 'isDeleted'},
    {'1': 'isUsingDefault', '3': 5, '4': 1, '5': 8, '10': 'isUsingDefault'},
    {'1': 'createdAt', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `AccountAvatar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAvatarDescriptor = $convert.base64Decode(
    'Cg1BY2NvdW50QXZhdGFyEg4KAmlkGAEgASgJUgJpZBIcCglhdmF0YXJVcmwYAiABKAlSCWF2YX'
    'RhclVybBIYCgdpc0luVXNlGAMgASgIUgdpc0luVXNlEhwKCWlzRGVsZXRlZBgEIAEoCFIJaXNE'
    'ZWxldGVkEiYKDmlzVXNpbmdEZWZhdWx0GAUgASgIUg5pc1VzaW5nRGVmYXVsdBI4CgljcmVhdG'
    'VkQXQYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');

