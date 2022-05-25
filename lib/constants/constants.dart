class Config {
  const Config._();

  static const _dev = true;

  static GrpcApiConfig get apiConfig {
    if (_dev) {
      return const GrpcApiConfig('localhost', 50051);
    } else {
      throw UnimplementedError();
    }
  }

  static GrpcApiConfig get messageConfig {
    if (_dev) {
      return const GrpcApiConfig('localhost', 50052);
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
