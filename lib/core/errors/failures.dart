abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errorMessage});
}

class CacheFailure extends Failure {
  const CacheFailure({required super.errorMessage});
}

class NetworkFailure extends Failure {
  const NetworkFailure({required super.errorMessage});
}

class HiveFailure extends Failure {
  const HiveFailure({required super.errorMessage});
}

class DataTransmissionFailure extends Failure {
  const DataTransmissionFailure({required super.errorMessage});
}
