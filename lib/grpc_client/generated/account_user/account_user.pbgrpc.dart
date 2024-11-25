//
//  Generated code. Do not modify.
//  source: account_user/account_user.proto
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

import 'account_user.pb.dart' as $0;

export 'account_user.pb.dart';

@$pb.GrpcServiceName('user_account.UserAccount')
class UserAccountClient extends $grpc.Client {
  static final _$getAccountInfo = $grpc.ClientMethod<$0.GetAccountInfoRequest, $0.GetAccountInfoResponse>(
      '/user_account.UserAccount/GetAccountInfo',
      ($0.GetAccountInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetAccountInfoResponse.fromBuffer(value));

  UserAccountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetAccountInfoResponse> getAccountInfo($0.GetAccountInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('user_account.UserAccount')
abstract class UserAccountServiceBase extends $grpc.Service {
  $core.String get $name => 'user_account.UserAccount';

  UserAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetAccountInfoRequest, $0.GetAccountInfoResponse>(
        'GetAccountInfo',
        getAccountInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAccountInfoRequest.fromBuffer(value),
        ($0.GetAccountInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetAccountInfoResponse> getAccountInfo_Pre($grpc.ServiceCall call, $async.Future<$0.GetAccountInfoRequest> request) async {
    return getAccountInfo(call, await request);
  }

  $async.Future<$0.GetAccountInfoResponse> getAccountInfo($grpc.ServiceCall call, $0.GetAccountInfoRequest request);
}
