class AppException implements Exception {
  final String message;
  final String? code;

  const AppException({
    required this.message,
    this.code,
  });

  @override
  String toString() => 'AppException(message: $message, code: $code)';
}

class DatabaseException extends AppException {
  const DatabaseException({
    required super.message,
    super.code,
  });
}

class CacheException extends AppException {
  const CacheException({
    required super.message,
    super.code,
  });
}

class NetworkException extends AppException {
  const NetworkException({
    required super.message,
    super.code,
  });
}
