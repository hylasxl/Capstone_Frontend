//
//  Generated code. Do not modify.
//  source: auth/auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'auth.pb.dart' as $0;

export 'auth.pb.dart';

@$pb.GrpcServiceName('auth.AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/auth.AuthService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$signup = $grpc.ClientMethod<$0.SignupRequest, $0.SignUpResponse>(
      '/auth.AuthService/Signup',
      ($0.SignupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignUpResponse.fromBuffer(value));
  static final _$checkExistingUsername = $grpc.ClientMethod<$0.CheckExistingUsernameRequest, $0.CheckExistingUsernameResponse>(
      '/auth.AuthService/CheckExistingUsername',
      ($0.CheckExistingUsernameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CheckExistingUsernameResponse.fromBuffer(value));
  static final _$checkExistingEmail = $grpc.ClientMethod<$0.CheckExistingEmailRequest, $0.CheckExistingEmailResponse>(
      '/auth.AuthService/CheckExistingEmail',
      ($0.CheckExistingEmailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CheckExistingEmailResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.SignUpResponse> signup($0.SignupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signup, request, options: options);
  }

  $grpc.ResponseFuture<$0.CheckExistingUsernameResponse> checkExistingUsername($0.CheckExistingUsernameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkExistingUsername, request, options: options);
  }

  $grpc.ResponseFuture<$0.CheckExistingEmailResponse> checkExistingEmail($0.CheckExistingEmailRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkExistingEmail, request, options: options);
  }
}

@$pb.GrpcServiceName('auth.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignupRequest, $0.SignUpResponse>(
        'Signup',
        signup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignupRequest.fromBuffer(value),
        ($0.SignUpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CheckExistingUsernameRequest, $0.CheckExistingUsernameResponse>(
        'CheckExistingUsername',
        checkExistingUsername_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckExistingUsernameRequest.fromBuffer(value),
        ($0.CheckExistingUsernameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CheckExistingEmailRequest, $0.CheckExistingEmailResponse>(
        'CheckExistingEmail',
        checkExistingEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckExistingEmailRequest.fromBuffer(value),
        ($0.CheckExistingEmailResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> login_Pre($grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.SignUpResponse> signup_Pre($grpc.ServiceCall call, $async.Future<$0.SignupRequest> request) async {
    return signup(call, await request);
  }

  $async.Future<$0.CheckExistingUsernameResponse> checkExistingUsername_Pre($grpc.ServiceCall call, $async.Future<$0.CheckExistingUsernameRequest> request) async {
    return checkExistingUsername(call, await request);
  }

  $async.Future<$0.CheckExistingEmailResponse> checkExistingEmail_Pre($grpc.ServiceCall call, $async.Future<$0.CheckExistingEmailRequest> request) async {
    return checkExistingEmail(call, await request);
  }

  $async.Future<$0.LoginResponse> login($grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.SignUpResponse> signup($grpc.ServiceCall call, $0.SignupRequest request);
  $async.Future<$0.CheckExistingUsernameResponse> checkExistingUsername($grpc.ServiceCall call, $0.CheckExistingUsernameRequest request);
  $async.Future<$0.CheckExistingEmailResponse> checkExistingEmail($grpc.ServiceCall call, $0.CheckExistingEmailRequest request);
}
