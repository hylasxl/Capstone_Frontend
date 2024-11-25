import 'package:grpc/grpc.dart';

class GrpcClient {
  final String host;
  final int port;
  late ClientChannel _channel;

  GrpcClient({this.host = "192.168.21.62", this.port = 8080}) {
    _channel = ClientChannel(
      host,
      port: 8080,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
  }

  Future<T> invoke<T>(Future<T> Function(ClientChannel channel) invokeMethod) async {
    try {
      return await invokeMethod(_channel);
    } catch (e) {
      throw Exception('gRPC call failed: $e');
    }
  }

  Future<void> shutdown() async {
    await _channel.shutdown();
  }
}
