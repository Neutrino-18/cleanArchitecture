abstract class Failures {
  final String errorMessage;

  const Failures({required this.errorMessage});
}

class ServerFailure extends Failures {
  const ServerFailure({required super.errorMessage});
}

class CacheFailure extends Failures {
  const CacheFailure({required super.errorMessage});
}

class NetworkFailure extends Failures {
  const NetworkFailure({required super.errorMessage});
}

class HiveFailure extends Failures {
  const HiveFailure({required super.errorMessage});
}
