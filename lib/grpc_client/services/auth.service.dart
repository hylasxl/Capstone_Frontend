import '../generated/auth/auth.pbgrpc.dart';
import '../grpc_client.dart';

class AuthService {
  final GrpcClient _grpcClient;

  AuthService(this._grpcClient);

  Future<LoginResponse> login(String username, String password) async {
    final request = LoginRequest()
      ..username = username
      ..password = password;

    return await _grpcClient.invoke<LoginResponse>((channel) async {
      final client = AuthServiceClient(channel);
      return await client.login(request);
    });
  }

  Future<SignUpResponse> signup(SignupRequest request) async {
    return await _grpcClient.invoke<SignUpResponse>((channel) async {
      final client = AuthServiceClient(channel);
      return await client.signup(request);
    });
  }

  Future<CheckExistingEmailResponse> checkExistingEmail(String email) async {
    final request = CheckExistingEmailRequest()..email = email;
    return await _grpcClient
        .invoke<CheckExistingEmailResponse>((channel) async {
      final client = AuthServiceClient(channel);
      return await client.checkExistingEmail(request);
    });
  }

  Future<CheckExistingUsernameResponse> checkExistingUsername(String usn) async {
    final request = CheckExistingUsernameRequest()..username = usn;
    return await _grpcClient
        .invoke<CheckExistingUsernameResponse>((channel) async {
      final client = AuthServiceClient(channel);
      return await client.checkExistingUsername(request);
    });
  }
}
