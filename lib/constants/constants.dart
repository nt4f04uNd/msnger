class Config {
  const Config._();

  static const _dev = true;

  static const _localhost = 'localhost';
  static const _localIp = '192.168.1.110';

  static GrpcApiConfig get apiConfig {
    if (_dev) {
      return const GrpcApiConfig(_localIp, 50051);
    } else {
      throw UnimplementedError();
    }
  }

  static GrpcApiConfig get messageConfig {
    if (_dev) {
      return const GrpcApiConfig(_localIp, 50052);
    } else {
      throw UnimplementedError();
    }
  }
}

class GrpcApiConfig {
  final String url;
  final int port;

  const GrpcApiConfig(
    this.url,
    this.port,
  );
}
