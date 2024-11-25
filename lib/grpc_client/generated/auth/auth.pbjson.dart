//
//  Generated code. Do not modify.
//  source: auth/auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGA'
    'IgASgJUghwYXNzd29yZA==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'claims', '3': 3, '4': 1, '5': 11, '6': '.auth.JWTClaims', '10': 'claims'},
    {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
    {'1': 'errorCode', '3': 5, '4': 1, '5': 9, '10': 'errorCode'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEiAKC2FjY2Vzc1Rva2VuGAEgASgJUgthY2Nlc3NUb2tlbhIiCgxyZW'
    'ZyZXNoVG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbhInCgZjbGFpbXMYAyABKAsyDy5hdXRoLkpX'
    'VENsYWltc1IGY2xhaW1zEhQKBWVycm9yGAQgASgJUgVlcnJvchIcCgllcnJvckNvZGUYBSABKA'
    'lSCWVycm9yQ29kZQ==');

@$core.Deprecated('Use signupRequestDescriptor instead')
const SignupRequest$json = {
  '1': 'SignupRequest',
  '2': [
    {'1': 'firstName', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'birthday', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthday'},
    {'1': 'gender', '3': 4, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 6, '4': 1, '5': 9, '10': 'password'},
    {'1': 'username', '3': 7, '4': 1, '5': 9, '10': 'username'},
    {'1': 'phoneNumber', '3': 8, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'avatar', '3': 9, '4': 1, '5': 12, '10': 'avatar'},
  ],
};

/// Descriptor for `SignupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signupRequestDescriptor = $convert.base64Decode(
    'Cg1TaWdudXBSZXF1ZXN0EhwKCWZpcnN0TmFtZRgBIAEoCVIJZmlyc3ROYW1lEhoKCGxhc3ROYW'
    '1lGAIgASgJUghsYXN0TmFtZRI2CghiaXJ0aGRheRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5U'
    'aW1lc3RhbXBSCGJpcnRoZGF5EhYKBmdlbmRlchgEIAEoCVIGZ2VuZGVyEhQKBWVtYWlsGAUgAS'
    'gJUgVlbWFpbBIaCghwYXNzd29yZBgGIAEoCVIIcGFzc3dvcmQSGgoIdXNlcm5hbWUYByABKAlS'
    'CHVzZXJuYW1lEiAKC3Bob25lTnVtYmVyGAggASgJUgtwaG9uZU51bWJlchIWCgZhdmF0YXIYCS'
    'ABKAxSBmF2YXRhcg==');

@$core.Deprecated('Use signUpResponseDescriptor instead')
const SignUpResponse$json = {
  '1': 'SignUpResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
    {'1': 'errorCode', '3': 2, '4': 1, '5': 9, '10': 'errorCode'},
  ],
};

/// Descriptor for `SignUpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUpResponseDescriptor = $convert.base64Decode(
    'Cg5TaWduVXBSZXNwb25zZRIUCgVlcnJvchgBIAEoCVIFZXJyb3ISHAoJZXJyb3JDb2RlGAIgAS'
    'gJUgllcnJvckNvZGU=');

@$core.Deprecated('Use jWTClaimsDescriptor instead')
const JWTClaims$json = {
  '1': 'JWTClaims',
  '2': [
    {'1': 'accountId', '3': 1, '4': 1, '5': 4, '10': 'accountId'},
    {'1': 'permissions', '3': 2, '4': 3, '5': 9, '10': 'permissions'},
    {'1': 'roleId', '3': 3, '4': 1, '5': 4, '10': 'roleId'},
    {'1': 'issuer', '3': 4, '4': 1, '5': 9, '10': 'issuer'},
    {'1': 'subject', '3': 5, '4': 1, '5': 9, '10': 'subject'},
    {'1': 'audience', '3': 6, '4': 1, '5': 9, '10': 'audience'},
    {'1': 'expiresAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
  ],
};

/// Descriptor for `JWTClaims`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jWTClaimsDescriptor = $convert.base64Decode(
    'CglKV1RDbGFpbXMSHAoJYWNjb3VudElkGAEgASgEUglhY2NvdW50SWQSIAoLcGVybWlzc2lvbn'
    'MYAiADKAlSC3Blcm1pc3Npb25zEhYKBnJvbGVJZBgDIAEoBFIGcm9sZUlkEhYKBmlzc3VlchgE'
    'IAEoCVIGaXNzdWVyEhgKB3N1YmplY3QYBSABKAlSB3N1YmplY3QSGgoIYXVkaWVuY2UYBiABKA'
    'lSCGF1ZGllbmNlEjgKCWV4cGlyZXNBdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBSCWV4cGlyZXNBdA==');

@$core.Deprecated('Use checkExistingUsernameRequestDescriptor instead')
const CheckExistingUsernameRequest$json = {
  '1': 'CheckExistingUsernameRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `CheckExistingUsernameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkExistingUsernameRequestDescriptor = $convert.base64Decode(
    'ChxDaGVja0V4aXN0aW5nVXNlcm5hbWVSZXF1ZXN0EhoKCHVzZXJuYW1lGAEgASgJUgh1c2Vybm'
    'FtZQ==');

@$core.Deprecated('Use checkExistingUsernameResponseDescriptor instead')
const CheckExistingUsernameResponse$json = {
  '1': 'CheckExistingUsernameResponse',
  '2': [
    {'1': 'isExisting', '3': 1, '4': 1, '5': 8, '10': 'isExisting'},
  ],
};

/// Descriptor for `CheckExistingUsernameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkExistingUsernameResponseDescriptor = $convert.base64Decode(
    'Ch1DaGVja0V4aXN0aW5nVXNlcm5hbWVSZXNwb25zZRIeCgppc0V4aXN0aW5nGAEgASgIUgppc0'
    'V4aXN0aW5n');

@$core.Deprecated('Use checkExistingEmailRequestDescriptor instead')
const CheckExistingEmailRequest$json = {
  '1': 'CheckExistingEmailRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `CheckExistingEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkExistingEmailRequestDescriptor = $convert.base64Decode(
    'ChlDaGVja0V4aXN0aW5nRW1haWxSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbA==');

@$core.Deprecated('Use checkExistingEmailResponseDescriptor instead')
const CheckExistingEmailResponse$json = {
  '1': 'CheckExistingEmailResponse',
  '2': [
    {'1': 'isExisting', '3': 1, '4': 1, '5': 8, '10': 'isExisting'},
  ],
};

/// Descriptor for `CheckExistingEmailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkExistingEmailResponseDescriptor = $convert.base64Decode(
    'ChpDaGVja0V4aXN0aW5nRW1haWxSZXNwb25zZRIeCgppc0V4aXN0aW5nGAEgASgIUgppc0V4aX'
    'N0aW5n');

