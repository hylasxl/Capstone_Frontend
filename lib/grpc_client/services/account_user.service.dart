import '../generated/account_user/account_user.pbgrpc.dart';
import '../grpc_client.dart';

class AccountUserService {
  final GrpcClient _grpcClient;       
  
  AccountUserService(this._grpcClient);

  Future<GetAccountInfoResponse> getAccountInfo(GetAccountInfoRequest request) async{
    return await _grpcClient.invoke<GetAccountInfoResponse>((channel)async{
      final client = UserAccountClient(channel);
      return await client.getAccountInfo(request);
    });
  }
}